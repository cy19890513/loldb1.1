//
//  TableViewController2.m
//  CollectionView
//
//  Created by Yang Chen on 5/20/15.
//
//

#import "TableViewController2.h"
#import "MyTableViewCell.h"
#import "Champion.h"

@interface TableViewController2 (){
    //NSMutableArray *champions;
    //NSMutableArray *championsWinRate;
}
	
@end

#define getDataURL @"http://www.boostshore.com/loldb/winRate.php"

@implementation TableViewController2
@synthesize json, championsArray,tableView;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //set the title
    self.title =@"WIN RATES";
    self.view.backgroundColor = [UIColor blackColor];
    [self setNeedsStatusBarAppearanceUpdate];
    [self retriveData];
    
    
    /*// Initialize the refresh control.
    self.refreshControl = [[UIRefreshControl alloc] init];
    self.refreshControl.backgroundColor = [UIColor purpleColor];
    self.refreshControl.tintColor = [UIColor whiteColor];
    [self.refreshControl addTarget:self.tableView
                            action:@selector(reloadData)
                  forControlEvents:UIControlEventValueChanged];
    */
    
    /*
    champions = [[NSMutableArray alloc] init];
    [champions addObject:@"Annie"];
    [champions addObject:@"Braum"];
    [champions addObject:@"Fiddlesticks"];
    [champions addObject:@"Gangplank"];
    [champions addObject:@"Gargas"];
    [champions addObject:@"Heimerdinger"];
    [champions addObject:@"Nasus"];
    [champions addObject:@"Nidalee"];
    [champions addObject:@"Udyr"];
    [champions addObject:@"Xin Zhao"];
    
    
    championsWinRate = [[NSMutableArray alloc] init];
    [championsWinRate addObject:@"65%"];
    [championsWinRate addObject:@"59%"];
    [championsWinRate addObject:@"57%"];
    [championsWinRate addObject:@"57%"];
    [championsWinRate addObject:@"57%"];
    [championsWinRate addObject:@"55%"];
    [championsWinRate addObject:@"52%"];
    [championsWinRate addObject:@"51%"];
    [championsWinRate addObject:@"51%"];
    [championsWinRate addObject:@"51%"];
     */
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [championsArray count];
}

//return that table view cell
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MyTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"tableCell" forIndexPath:indexPath];
    
    UIImageView *imageView = (UIImageView *)[self.view viewWithTag:201];
    UILabel *nameLabel = (UILabel *)[self.view viewWithTag:202];
    UILabel *rateLabel = (UILabel *)[self.view viewWithTag:203];
    
    //nameLabel.text = [champions objectAtIndex:indexPath.row];
    //rateLabel.text = [championsWinRate objectAtIndex:indexPath.row];
    nameLabel.text = [[championsArray objectAtIndex:indexPath.row] championName];
    rateLabel.text = [[championsArray objectAtIndex:indexPath.row] championWinRate];
    
    
    NSString *imageToLoad = [NSString stringWithFormat:@"%@.jpg", nameLabel.text];
    imageView.image = [UIImage imageNamed:imageToLoad];
    
    //set background color black
    //UIView *myView = [[UIView alloc] init];
    //myView.backgroundColor = [UIColor blackColor];
    //cell.backgroundView = myView;
    
    // Configure the cell...
    
    return cell;
}

//This is the method to load data from mysql
#pragma mark -Methods
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
        NSString *cWinRate = [[json objectAtIndex:i]objectForKey:@"winRates"];
        
        Champion *tempChampion = [[Champion alloc] initWithChampionId:cID andChampionName:cName andChampionWinRate:cWinRate];
        [championsArray addObject:tempChampion];
    }
    
    [(UITableView *)[self.view viewWithTag:204] reloadData];//?!#@!?
    
}
/*
#pragma mark - refresh control
- (void)reloadData
{
    // Reload table data
    [self.tableView reloadData];
    
    // End the refreshing
    if (self.refreshControl) {
        
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        [formatter setDateFormat:@"MMM d, h:mm a"];
        NSString *title = [NSString stringWithFormat:@"Last update: %@", [formatter stringFromDate:[NSDate date]]];
        NSDictionary *attrsDictionary = [NSDictionary dictionaryWithObject:[UIColor whiteColor]
                                                                    forKey:NSForegroundColorAttributeName];
        NSAttributedString *attributedTitle = [[NSAttributedString alloc] initWithString:title attributes:attrsDictionary];
        self.refreshControl.attributedTitle = attributedTitle;
        
        [self.refreshControl endRefreshing];
    }
}
*/


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}




@end
