//
//  UHLoginController.m
//  UHunting
//
//  Created by Andres Pineda on 5/13/16.
//  Copyright © 2016 AP. All rights reserved.
//

#import "UHLoginController.h"


@interface UHLoginController ()

@end

@implementation UHLoginController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)actionLogin:(id)sender {
    
    if(self.textFieldUsername.text.length == 0){
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Invalid username"
         message:@"You need to add a username  "
         delegate:self
         cancelButtonTitle:@"OK"
         otherButtonTitles:nil];
            [alert show];

    }
    
    NSString *username = self.textFieldUsername.text;
    
    [UHClient isValidUser:username callback:^(id response, NSError *error) {
        if (response) {
            if(response == 0){
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Invalid username"
                                                                message:@"The username is invalid"
                                                               delegate:self
                                                      cancelButtonTitle:@"OK"
                                                      otherButtonTitles:nil];
                [alert show];
            }else{
                
                UITabBarController *userCtrl = [self.storyboard instantiateViewControllerWithIdentifier:@"userView"];
                
                [self presentViewController:userCtrl animated:true completion:nil];
               // userCtrl.uid = response;
                
//                [self.navigationController pushViewController:userCtrl animated:YES];
            
            }
        }else{
            
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Problem"
                                                            message:@"There was an error,please try again"
                                                           delegate:self
                                                  cancelButtonTitle:@"OK"
                                                  otherButtonTitles:nil];
            [alert show];
            
        }
    }];
    
    
    
    
}
@end
