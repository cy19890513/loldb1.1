//
//  ViewController.h
//  loldb
//
//  Created by Yang Chen on 5/22/15.
//  Copyright (c) 2015 Yang Chen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UICollectionViewController


@property(nonatomic, strong) NSMutableArray * json;
@property(nonatomic, strong) NSMutableArray * championsArray;

#pragma mark -Methods
-(void) retriveData;


@end

