//
//  TableViewController2.h
//  CollectionView
//
//  Created by Yang Chen on 5/20/15.
//
//

#import <UIKit/UIKit.h>

@interface TableViewController2 : UIViewController
<UITableViewDataSource,UITableViewDelegate>

@property(nonatomic, strong) NSMutableArray * json;
@property(nonatomic, strong) NSMutableArray * championsArray;

@property (nonatomic) UIRefreshControl *refreshControl;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

#pragma mark -Methods
-(void) retriveData;

@end
