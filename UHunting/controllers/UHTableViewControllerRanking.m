//
//  UHTableViewControllerRanking.m
//  UHunting
//
//  Created by Andres Pineda on 5/21/16.
//  Copyright © 2016 AP. All rights reserved.
//

#import "UHTableViewControllerRanking.h"
#import "SWRevealViewController.h"

@interface UHTableViewControllerRanking ()

@end

@implementation UHTableViewControllerRanking

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.ranking = [[NSArray alloc]init];
    
    _barButton.target = self.revealViewController;
    _barButton.action = @selector(revealToggle:);

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
    return 0;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    
    
    UILabel *position = (UILabel *) [cell viewWithTag:1];
    UILabel *name = (UILabel * ) [cell viewWithTag:2];
    UILabel *accepteds = (UILabel * ) [cell viewWithTag:3];
    
    NSDictionary *rankingPosition = [self.ranking objectAtIndex:indexPath.row];
    
    
    position.text = [rankingPosition objectForKey:@"rank"];
    
    name.text = [rankingPosition objectForKey:@"name"];
    
    accepteds.text = [rankingPosition objectForKey:@"ac"];
    
    
    [cell addSubview:position];
    [cell addSubview:name];
    [cell addSubview:accepteds];
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

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
