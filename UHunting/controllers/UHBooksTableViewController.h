//
//  UHBooksTableViewController.h
//  UHunting
//
//  Created by Andres Pineda on 5/17/16.
//  Copyright © 2016 AP. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UHBooksChaptersTableViewController.h"
#import "UHBooksChaptersTableViewController.h"
#import "UHClient.h"

@interface UHBooksTableViewController : UITableViewController<UITableViewDelegate, UITableViewDataSource>
@property (strong, nonatomic) NSArray *books;
@end
