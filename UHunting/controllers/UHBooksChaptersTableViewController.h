//
//  UHBooksChaptersTableViewController.h
//  UHunting
//
//  Created by Andres Pineda on 5/17/16.
//  Copyright © 2016 AP. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UHClient.h"
#import "UHTableViewControllerBooksChapterTopic.h"

@interface UHBooksChaptersTableViewController : UITableViewController<UITableViewDataSource, UITableViewDelegate>

@property (nonatomic) NSString *edition;
@property (strong, nonatomic) NSArray *chapters;

@end
