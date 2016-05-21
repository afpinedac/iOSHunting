//
//  UHProblemsViewController.m
//  UHunting
//
//  Created by Andres Pineda on 5/13/16.
//  Copyright © 2016 AP. All rights reserved.
//

#import "UHProblemsViewController.h"



@interface UHProblemsViewController ()

@end

@implementation UHProblemsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    long width = self.view.frame.size.width / 2.0;
        long height = self.view.frame.size.height / 2.0;
    
    UIActivityIndicatorView *loading =[UHActivityIndicator display:width height:height];
    [self.view addSubview: loading];
    [loading startAnimating];
    
    //[activityIndicator release];
    
    
    //kind of ajax call...
    [UHClient isValidUser:@"felix_halim_3" callback:^(id response, NSError *error) {
        if(response){
            if(response == 0){
                
            }else{
                
            }
            [loading stopAnimating];
           // [activityIndicator stopAnimating];
            
        }else{
            NSLog(@"there was an error %@", error);
        }
    }];
    
    /*UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Do you want to say hello?"
                                                    message:@"More info..."
                                                   delegate:self
                                          cancelButtonTitle:@"Cancel"
                                          otherButtonTitles:@"Say Hello",nil];*/
        //    [alert show];
    //[alert release];

    
    
    
    self.persons = @[@"andres",@"johanna", @"manuel"];
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
#warning Incomplete implementation, return the number of rows
    
    if(self.persons){
        return [self.persons count];

    }
    return 0;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    

    UILabel *label = (UILabel *) [cell viewWithTag:1];
    label.text = [self.persons objectAtIndex:indexPath.row];
    
    
    return cell;
}



// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}


/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
