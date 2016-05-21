//
//  UHProblemsViewController.h
//  UHunting
//
//  Created by Andres Pineda on 5/13/16.
//  Copyright © 2016 AP. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UHClient.h"
#import "UHActivityIndicator.h"

@interface UHProblemsViewController : UITableViewController<UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) NSArray* persons;

@end
