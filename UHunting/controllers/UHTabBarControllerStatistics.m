//
//  UHTabBarControllerStatistics.m
//  UHunting
//
//  Created by Andres Pineda on 5/21/16.
//  Copyright © 2016 AP. All rights reserved.
//

#import "UHTabBarControllerStatistics.h"
#import "SWRevealViewController.h"

@interface UHTabBarControllerStatistics ()

@end

@implementation UHTabBarControllerStatistics

- (void)viewDidLoad {
    [super viewDidLoad];

    
    
    _barButton.target = self.revealViewController;
   _barButton.action = @selector(revealToggle:);
    
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
