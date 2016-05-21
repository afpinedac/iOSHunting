//
//  UHUserStatisticsControllerTableViewController.h
//  UHunting
//
//  Created by Andres Pineda on 5/14/16.
//  Copyright © 2016 AP. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UHUserStatisticsController : UITableViewController
@property (strong,nonatomic) NSNumber *uid;
@property (weak, nonatomic) IBOutlet UILabel *labelUID;
@end
