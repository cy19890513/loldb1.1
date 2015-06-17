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

@property(nonatomic,strong) NSString *badAgainstChampion1;
@property(nonatomic,strong) NSString *badAgainstChampion2;
@property(nonatomic,strong) NSString *badAgainstChampion3;
@property(nonatomic,strong) NSString *badAgainstChampion4;
@property(nonatomic,strong) NSString *badAgainstChampion5;
@property(nonatomic,strong) NSString *badAgainstChampion6;
@property(nonatomic,strong) NSString *goodAgainstChampion1;
@property(nonatomic,strong) NSString *goodAgainstChampion2;
@property(nonatomic,strong) NSString *goodAgainstChampion3;
@property(nonatomic,strong) NSString *goodAgainstChampion4;
@property(nonatomic,strong) NSString *goodAgainstChampion5;
@property(nonatomic,strong) NSString *goodAgainstChampion6;




//Methods
-(id) initWithChampionId: (NSString *) cID andChampionName:(NSString *) cName andChampionWinRate:(NSString *) cWinRate;
-(id) initWithChampionId: (NSString *) cID andChampionName:(NSString *) cName andBAC1:(NSString *) cBA1 andBAC2:(NSString *) cBA2 andBAC3:(NSString *) cBA3 andBAC4:(NSString *) cBA4 andBAC5:(NSString *) cBA5 andBAC6:(NSString *) cBA6 andGAC1:(NSString *) cGA1 andGAC2:(NSString *) cGA2 andGAC3:(NSString *) cGA3 andGAC4:(NSString *) cGA4 andGAC5:(NSString *) cGA5 andGAC6:(NSString *) cGA6;


@end
