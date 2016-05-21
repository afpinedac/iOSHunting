//
//  UHLoginController.h
//  UHunting
//
//  Created by Andres Pineda on 5/13/16.
//  Copyright © 2016 AP. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UHActivityIndicator.h"
#import "UHClient.h"
#import "UHUserStatisticsController.h"

@interface UHLoginController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *textFieldUsername;


- (IBAction)actionLogin:(id)sender;


@end

