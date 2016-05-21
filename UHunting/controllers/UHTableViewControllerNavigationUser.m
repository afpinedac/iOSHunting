//
//  UHTableViewControllerNavigationUser.m
//  UHunting
//
//  Created by Andres Pineda on 5/21/16.
//  Copyright © 2016 AP. All rights reserved.
//

#import "UHTableViewControllerNavigationUser.h"
#import "SWRevealViewController.h"

@interface UHTableViewControllerNavigationUser ()

@end

@implementation UHTableViewControllerNavigationUser
{
    NSArray *menu;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    menu = @[@"profile" , @"statistics", @"ranking", @"submissions"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [menu count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    NSString *cellIdentifier = [menu objectAtIndex:indexPath.row];
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    
    
    return cell;
}

// In a storyboard-based application, you will often want to do a little preparation before navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if([segue isKindOfClass:[SWRevealViewControllerSegueSetController class] ]){

        UIViewController *dvc = [segue destinationViewController];
        UINavigationController *navCtrl = (UINavigationController *) self.revealViewController.frontViewController;
        [navCtrl setViewControllers:@[dvc] animated:NO];
        [self.revealViewController setFrontViewPosition:FrontViewPositionLeft animated:YES];
    }
    
}



@end
