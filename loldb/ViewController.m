//
//  ViewController.m
//  loldb
//
//  Created by Yang Chen on 5/22/15.
//  Copyright (c) 2015 Yang Chen. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"
#import "Cell.h"
#import "Champion.h"


@interface ViewController (){


}
@end
NSString *kDetailedViewControllerID = @"DetailView";    // view controller storyboard id
NSString *kCellID = @"cellID";                          // UICollectionViewCell storyboard id
NSMutableArray *champions;

#define getDataURL @"http://www.boostshore.com/loldb/champions.php"

@implementation ViewController
@synthesize json, championsArray,searchResults,searchBar;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"COUNTER PICKS";
    // Do any additional setup after loading the view, typically from a nib.
    
    //initialize the champions array
    /*
    champions = [[NSMutableArray alloc] initWithObjects:@"Aatrox",@"Ahri",@"Akali",@"Amumu",@"Anivia",@"Annie",@"Ashe",@"Azir",@"Bard",
@"Blitzcrank",@"Brand",@"Braum",@"Caitlyn",@"Cassiopeia",@"Cho'Gath",@"Corki",@"Darius",@"Diana",@"Dr.Mundo",@"Draven",@"Elise",
@"Evelynn",@"Ezreal",@"Fiddlesticks",@"Fiora",@"Fizz",@"Galio",@"Gangplank",@"Garen",@"Gnar",@"Gragas",@"Graves",@"Hecarim",@"Heimerdinger",
@"Irelia",@"Janna",@"Jarven IV",@"Jax",@"Jayce",@"Jinx",@"Kalista",@"Karma",@"Karthus",@"Kassadin",@"Katarina",@"Kayle",@"Kennen",
@"Kha'Zix",@"Kog'Maw",@"LeBlanc",@"Lee Sin",@"Leona",@"Lissandra",@"Lucian",@"Lulu",@"Lux",@"Malphite",@"Malzahar",@"Maokai",@"Master Yi",
@"Miss Fortune",@"Mordekaiser",@"Morgana",@"Nami",@"Nasus",@"Nautilus",@"Nidalee",@"Nocturne",@"Nunu",@"Olaf",@"Orianna",@"Pantheon",
@"Poppy",@"Quinn",@"Rammus",@"Rek'Sai",@"Renekton",@"Rengar",@"Riven",@"Rumble",@"Ryze",@"Sejuani",@"Shaco",@"Shen",@"Shyvana",@"Singed",
@"Sion",@"Sivir",@"Skarner",@"Sona",@"Soraka",@"Swain",@"Syndra",@"Talon",@"Taric",@"Teemo",@"Thresh",@"Tristana",@"Trundle",@"Tryndamere",@"Twisted Fate",
@"Twitch",@"Udyr",@"Urgot",@"Varus",@"Vayne",@"Veigar",@"Vel'Koz",@"Vi",@"Viktor",@"Vladimir",@"Volibear",@"Warwick",@"Wukong",@"Xerath",@"Xin Zhao",
@"Yasuo",@"Yorick",@"Zac",@"Zed",@"Ziggs",@"Zilean",@"Zyra",nil];
    */
    
    [self retriveData];
    // Initialize the filteredCandyArray with a capacity equal to the candyArray's capacity
    self.searchResults = [NSMutableArray arrayWithArray:championsArray];
    
	//add a dismissKeyboard function
    //UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
    //                               initWithTarget:self
    //                               action:@selector(dismissKeyboard)];
    
    //[self.view addGestureRecognizer:tap];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




- (NSInteger)collectionView:(UICollectionView *)view numberOfItemsInSection:(NSInteger)section;
{	/*
    if ( view == self.searchDisplayController.searchResultsTableView) {
        return [searchResults count];
    }
    else{
        return [championsArray count];
    }
    */
    return [searchResults count];
    //return [championsArray count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)cv cellForItemAtIndexPath:(NSIndexPath *)indexPath;
{
    // we're going to use a custom UICollectionViewCell, which will hold an image and its label
    //
    Cell *cell = [cv dequeueReusableCellWithReuseIdentifier:kCellID forIndexPath:indexPath];
    
    // make the cell's title the actual NSIndexPath value
    //cell.label.text = [NSString stringWithFormat:@"{%ld,%ld}", (long)indexPath.row, (long)indexPath.section];
    cell.label.text = [[searchResults objectAtIndex:indexPath.row] championName];
    
    // load the image for this cell
    //NSString *imageToLoad = [NSString stringWithFormat:@"%d.JPG", indexPath.row];
    NSString *imageToLoad = [NSString stringWithFormat:@"%@.jpg", cell.label.text];
    cell.image.image = [UIImage imageNamed:imageToLoad];
    
    return cell;
}

//DeSelect Cell
- (void) collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    [collectionView deselectItemAtIndexPath:indexPath animated:YES];
}

// the user tapped a collection item, load and set the image on the detail view controller
//
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    [self dismissKeyboard];
    [self.searchBar resignFirstResponder];
    if ([[segue identifier] isEqualToString:@"showDetail"])
    {
        UICollectionView *collectionView = (UICollectionView *)[self.view viewWithTag:301];
        NSIndexPath *selectedIndexPath = [[collectionView indexPathsForSelectedItems] objectAtIndex:0];
        
        // load the image, to prevent it from being cached we use 'initWithContentsOfFile'
        NSString *imageNameToLoad = [NSString stringWithFormat:@"%@", [[searchResults objectAtIndex:selectedIndexPath.row] championName]];
        NSString *pathToImage = [[NSBundle mainBundle] pathForResource:imageNameToLoad ofType:@"jpg"];
        UIImage *image = [[UIImage alloc] initWithContentsOfFile:pathToImage];
        
        DetailViewController *detailViewController = [segue destinationViewController];
        detailViewController.image = image;
        detailViewController.name.text=(NSString *)[[championsArray objectAtIndex:selectedIndexPath.row] championName];
    }
}


#pragma mark -Methods
//This method is design to get data from database
-(void) retriveData
{
    NSURL *url = [NSURL URLWithString:getDataURL];
    NSData *data = [NSData dataWithContentsOfURL:url];
    json = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    
    //Set up our champions array
    championsArray = [[NSMutableArray alloc]init];
    
    for (int i=0; i < json.count; i++ )
    {
        //Create champion objec
        NSString *cID = [[json objectAtIndex:i]objectForKey:@"id"];
        NSString *cName = [[json objectAtIndex:i]objectForKey:@"championName"];
        //NSString *cWinRate = [[json objectAtIndex:i]objectForKey:@"winRates"];
        
        Champion *tempChampion = [[Champion alloc] initWithChampionId:cID andChampionName:cName andChampionWinRate:@""];
        [championsArray addObject:tempChampion];
    }
    
    //[self.view viewDidLoad];//?!#@!?
    UICollectionView *collectionView = (UICollectionView *)[self.view viewWithTag:301];
    [collectionView reloadData];
    //[[self.view viewWithTag:103] reloadData];
}

- (void)viewWillAppear:(BOOL)animated
{
    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
    [super viewWillAppear:animated];
}

#pragma mark Content Filtering
-(void)filterContentForSearchText:(NSString*)searchText scope:(NSString*)scope {
    // Update the filtered array based on the search text and scope.
    // Remove all objects from the filtered search array
    [self.searchResults removeAllObjects];
    // Filter the array using NSPredicate
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF.championName contains[c] %@",searchText];
    searchResults = [NSMutableArray arrayWithArray:[championsArray filteredArrayUsingPredicate:predicate]];
    
    UICollectionView *collectionView = (UICollectionView *)[self.view viewWithTag:301];
    [collectionView reloadData];
}

#pragma mark - UISearchDisplayController Delegate Methods
-(BOOL)searchDisplayController:(UISearchDisplayController *)controller shouldReloadTableForSearchString:(NSString *)searchString {
    // Tells the table data source to reload when text changes
    [self filterContentForSearchText:searchString scope:
     [[self.searchDisplayController.searchBar scopeButtonTitles] objectAtIndex:[self.searchDisplayController.searchBar selectedScopeButtonIndex]]];
    NSLog(@"searchDisplayController shouldReloadTableForSearchString");
    // Return YES to cause the search result table view to be reloaded.
    return YES;
}

-(BOOL)searchDisplayController:(UISearchDisplayController *)controller shouldReloadTableForSearchScope:(NSInteger)searchOption {
    // Tells the table data source to reload when scope bar selection changes
    [self filterContentForSearchText:self.searchDisplayController.searchBar.text scope:
     [[self.searchDisplayController.searchBar scopeButtonTitles] objectAtIndex:searchOption]];
    NSLog(@"searchDisplayController shouldReloadTableForSearchScope");
    // Return YES to cause the search result table view to be reloaded.
    return YES;
}

- (void)searchBar:(UISearchBar *) searchBar textDidChange:(NSString *)searchText {
    NSLog(@"TextDidChange %@",searchBar.text);
    if (searchBar.text && [searchBar.text length]) {
        NSPredicate *filterPredicate = [NSPredicate predicateWithFormat:@"SELF.championName CONTAINS[cd] %@", searchBar.text];
        self.searchResults= [championsArray filteredArrayUsingPredicate:filterPredicate];
        
    } else {
        self.searchResults = championsArray;
    }
    
    UICollectionView *collectionView = (UICollectionView *)[self.view viewWithTag:301];
    [collectionView reloadData];
}

- (void)searchBarCancelButtonClicked:(UISearchBar *)searchBar{
    [self cancelSearching];
    
    searchResults = championsArray;
    UICollectionView *collectionView = (UICollectionView *)[self.view viewWithTag:301];
    [collectionView reloadData];
    NSLog(@"searchBarCancelButtonClicked");
}
- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar{
    //self.searchBarActive = YES;
    [self.view endEditing:YES]; //***** YANG
    NSLog(@"searchBarSearchButtonClicked");
}
- (void)searchBarTextDidBeginEditing:(UISearchBar *)searchBar{
    // we used here to set self.searchBarActive = YES
    // but we'll not do that any more... it made problems
    // it's better to set self.searchBarActive = YES when user typed something
    [self.searchBar setShowsCancelButton:YES animated:YES];
    NSLog(@"searchBarTextDidBeginEditing");
}
- (void)searchBarTextDidEndEditing:(UISearchBar *)searchBar{
    // this method is being called when search btn in the keyboard tapped
    // we set searchBarActive = NO
    // but no need to reloadCollectionView
    //self.searchBarActive = NO;
    [self.searchBar setShowsCancelButton:NO animated:YES];
    NSLog(@"searchBarTextDidEndEditing");
}
-(void)cancelSearching{
    //self.searchBarActive = NO;
    [self.searchBar resignFirstResponder];
    self.searchBar.text  = @"";
    NSLog(@"CancelSearching");
}

//dismiss keyboad
-(void)dismissKeyboard {
    [self.searchBar resignFirstResponder];
}

@end
