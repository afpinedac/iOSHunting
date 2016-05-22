//
//  UHBooksTableViewController.m
//  UHunting
//
//  Created by Andres Pineda on 5/17/16.
//  Copyright © 2016 AP. All rights reserved.
//

#import "UHBooksTableViewController.h"

@interface UHBooksTableViewController ()

@end

@implementation UHBooksTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.books = @[@"Edition 1",@"Edition 2",@"Edition 3"];
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

    return [self.books count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellBook" forIndexPath:indexPath];
    
    UILabel *label = (UILabel * ) [cell viewWithTag:1];
    label.text = self.books[indexPath.row];

    
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath {
    
/*    UHBooksChaptersTableViewController *viewChapterBooks = [[UHBooksChaptersTableViewController alloc] init];
    
    viewChapterBooks.edition = indexPath.row;
    
    [self presentViewController:viewChapterBooks animated:YES completion:NULL];
    
    NSLog(@"selecciono %d", (int)indexPath.row);*/
    

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


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    

    
    UHBooksChaptersTableViewController *viewChapters = [segue destinationViewController];
    NSIndexPath *selectedOption = [self.tableView indexPathForSelectedRow];
    
    viewChapters.edition= [@(selectedOption.row + 1) stringValue];
    
    
}


@end
