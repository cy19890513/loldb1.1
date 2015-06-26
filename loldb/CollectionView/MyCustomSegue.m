//
//  MyCustomSegue.m
//  loldb
//
//  Created by Yang Chen on 6/25/15.
//  Copyright (c) 2015 Yang Chen. All rights reserved.
//

#import "MyCustomSegue.h"

@implementation MyCustomSegue
//YANG added 25Jun2015 customReplaceSegue
-(void)perform {
    UIViewController *sourceViewController = (UIViewController*)[self sourceViewController];
    UIViewController *destinationController = (UIViewController*)[self destinationViewController];
    UINavigationController *navigationController = sourceViewController.navigationController;
    // Pop to root view controller (not animated) before pushing
    [navigationController popToRootViewControllerAnimated:NO];
    [navigationController pushViewController:destinationController animated:YES];
    
   // UINavigationController* nav =
    //[[UINavigationController alloc] initWithRootViewController:self.navigation];
    //UIPopoverController* pop =
    //[[UIPopoverController alloc] initWithContentViewController:nav];
    NSLog(@"Custom Segue performed");
}


@end
