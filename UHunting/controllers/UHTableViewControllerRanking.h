//
//  UHTableViewControllerRanking.h
//  UHunting
//
//  Created by Andres Pineda on 5/21/16.
//  Copyright © 2016 AP. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UHTableViewControllerRanking : UITableViewController<UITableViewDataSource, UITableViewDataSource>


@property (weak, nonatomic) IBOutlet UIBarButtonItem *barButton;

@property NSArray *ranking;


@end
