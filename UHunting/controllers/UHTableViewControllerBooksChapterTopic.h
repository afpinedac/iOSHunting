//
//  UHTableViewControllerBooksChapterTopic.h
//  UHunting
//
//  Created by Andres Pineda on 5/21/16.
//  Copyright © 2016 AP. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UHTableViewControllerBooksChapterTopicsProblems.h"

@interface UHTableViewControllerBooksChapterTopic : UITableViewController<UITableViewDataSource, UITableViewDelegate>
    @property (strong, nonatomic) NSArray *topics;
@end
