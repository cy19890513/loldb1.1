//
//  Champion.m
//  loldb
//
//  Created by Yang Chen on 6/2/15.
//  Copyright (c) 2015 Yang Chen. All rights reserved.
//

#import "Champion.h"



@implementation Champion
@synthesize championID, championName, championWinRate,badAgainstChampion1,badAgainstChampion2,badAgainstChampion3,badAgainstChampion4,badAgainstChampion5,badAgainstChampion6,goodAgainstChampion1,goodAgainstChampion2,goodAgainstChampion3,goodAgainstChampion4,goodAgainstChampion5,goodAgainstChampion6;


//Design for champion object
-(id) initWithChampionId: (NSString *) cID andChampionName:(NSString *) cName andBAC1:(NSString *) cBA1 andBAC2:(NSString *) cBA2 andBAC3:(NSString *) cBA3 andBAC4:(NSString *) cBA4 andBAC5:(NSString *) cBA5 andBAC6:(NSString *) cBA6 andGAC1:(NSString *) cGA1 andGAC2:(NSString *) cGA2 andGAC3:(NSString *) cGA3 andGAC4:(NSString *) cGA4 andGAC5:(NSString *) cGA5 andGAC6:(NSString *) cGA6
{
    self=[super init];
    if(self)
    {
        championID = cID;
        championName = cName;
        
        badAgainstChampion1 =cBA1;
        badAgainstChampion2 =cBA2;
        badAgainstChampion3 =cBA3;
        badAgainstChampion4 =cBA4;
        badAgainstChampion5 =cBA5;
        badAgainstChampion6 =cBA6;
        goodAgainstChampion1 =cGA1;
        goodAgainstChampion2 =cGA2;
        goodAgainstChampion3 =cGA3;
        goodAgainstChampion4 =cGA4;
        goodAgainstChampion5 =cGA5;
        goodAgainstChampion6 =cGA6;
        
    }
    return self;
}

-(id) initWithChampionId: (NSString *) cID andChampionName:(NSString *) cName andChampionWinRate:(NSString *) cWinRate
{
    self=[super init];
    if(self)
    {
        championID = cID;
        championName = cName;
        championWinRate = cWinRate;
        
    }
    return self;

}



@end
