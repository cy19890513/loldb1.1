//
//  Champion.h
//  loldb
//
//  Created by Yang Chen on 6/2/15.
//  Copyright (c) 2015 Yang Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Champion : NSObject

@property(nonatomic,strong) NSString *championName;

@property(nonatomic,strong) NSString *championID;

@property(nonatomic,strong) NSString *championWinRate;


//Methods
-(id) initWithChampionId: (NSString *) cID andChampionName:(NSString *) cName andChampionWinRate:(NSString *) cWinRate;



@end
