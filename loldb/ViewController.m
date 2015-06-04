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
@synthesize json, championsArray;

- (void)viewDidLoad {
    [super viewDidLoad];
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

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




- (NSInteger)collectionView:(UICollectionView *)view numberOfItemsInSection:(NSInteger)section;
{
    return [championsArray count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)cv cellForItemAtIndexPath:(NSIndexPath *)indexPath;
{
    // we're going to use a custom UICollectionViewCell, which will hold an image and its label
    //
    Cell *cell = [cv dequeueReusableCellWithReuseIdentifier:kCellID forIndexPath:indexPath];
    
    // make the cell's title the actual NSIndexPath value
    //cell.label.text = [NSString stringWithFormat:@"{%ld,%ld}", (long)indexPath.row, (long)indexPath.section];
    cell.label.text = [[championsArray objectAtIndex:indexPath.row] championName];
    
    // load the image for this cell
    //NSString *imageToLoad = [NSString stringWithFormat:@"%d.JPG", indexPath.row];
    NSString *imageToLoad = [NSString stringWithFormat:@"%@.jpg", cell.label.text];
    cell.image.image = [UIImage imageNamed:imageToLoad];
    
    return cell;
}

// the user tapped a collection item, load and set the image on the detail view controller
//
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showDetail"])
    {
        NSIndexPath *selectedIndexPath = [[self.collectionView indexPathsForSelectedItems] objectAtIndex:0];
        
        // load the image, to prevent it from being cached we use 'initWithContentsOfFile'
        NSString *imageNameToLoad = [NSString stringWithFormat:@"%@", [[championsArray objectAtIndex:selectedIndexPath.row] championName]];
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
    
    [self.collectionView reloadData];//?!#@!?
}







@end
