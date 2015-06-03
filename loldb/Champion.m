//
//  Champion.m
//  loldb
//
//  Created by Yang Chen on 6/2/15.
//  Copyright (c) 2015 Yang Chen. All rights reserved.
//

#import "Champion.h"



@implementation Champion
@synthesize championID, championName, championWinRate;


//Methods
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
