//
//  ViewController.h
//  loldb
//
//  Created by Yang Chen on 5/22/15.
//  Copyright (c) 2015 Yang Chen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UICollectionViewDelegate,UICollectionViewDataSource, UISearchBarDelegate,UISearchDisplayDelegate>


@property(nonatomic, strong) NSMutableArray * json;
@property(nonatomic, strong) NSMutableArray * championsArray;
@property(nonatomic, strong) NSMutableArray *searchResults;
@property IBOutlet UISearchBar *searchBar;
#pragma mark -Methods
-(void) retriveData;


@end

