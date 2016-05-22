//
//  UHTableViewControllerLiveSubmissions.m
//  Pods
//
//  Created by Andres Pineda on 5/22/16.
//
//

#import "UHTableViewControllerLiveSubmissions.h"
#import "../models/UHClient.h"

@interface UHTableViewControllerLiveSubmissions ()
@property NSMutableArray *lastSubmissions;
@property NSString *lastSubmissionProcessed ;
@end

@implementation UHTableViewControllerLiveSubmissions

- (void)viewDidLoad {
    [super viewDidLoad];
    self.lastSubmissions = [[NSMutableArray alloc] init];
    self.lastSubmissionProcessed = @"0";
    

    
    __unused  NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:5 target:self selector:@selector(getSubs:) userInfo:NULL repeats:YES];
    
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
    
    return [self.lastSubmissions count];
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    @try{
        
        UILabel *labelSubID = (UILabel *) [cell viewWithTag:1];
        
        NSDictionary *msg = [[self.lastSubmissions objectAtIndex:(int)[indexPath row]] objectForKey:@"msg"];
        
        NSString *n = [[msg objectForKey:@"sid"] stringValue];
        
        labelSubID.text = n;
        
        [cell addSubview:labelSubID];
    }@catch(NSException *e){
        NSLog(@"%@", e.reason);
        
    }
    
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


#pragma mark - UHClient
-(void) getSubs:(NSTimer *) timer{
    NSLog(@"calling ...");
    
    [UHClient getLastSubmissions:self.lastSubmissionProcessed callback:^(id response, NSError *error) {
        if(response){
            
            NSArray *data = response;
            
            
            for (int i = 0; i<[data count]; i++) {
                
                NSDictionary *sub = [data objectAtIndex:i];
                
                [self.lastSubmissions insertObject:sub atIndex:0];
                if([self.lastSubmissions count] > 100){
                    [self.lastSubmissions removeObjectAtIndex:100];
                }
            }
            
            self.lastSubmissionProcessed = [[[self.lastSubmissions lastObject] objectForKey:@"id"] stringValue];
            
            [self.tableView reloadData];
            
        }else{
            NSLog(@"We have an error");
        }
    }];
    
}
@end
