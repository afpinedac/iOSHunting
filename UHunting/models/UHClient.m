//
//  UHClient.m
//  UHunting
//
//  Created by Andres Pineda on 5/13/16.
//  Copyright © 2016 AP. All rights reserved.
//

#import "UHClient.h"


@implementation UHClient

+(void) request: (NSString *) endPoint callback: (void (^)(id response, NSError *error))callbackBlock{
    

    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:configuration];
    
    manager.responseSerializer  = [AFJSONResponseSerializer serializerWithReadingOptions:NSJSONReadingAllowFragments];
    
    #warning validate the endpoint
    NSString *api =@"http://uhunt.felix-halim.net/api";
    
    NSString *requestEndPoint = [NSString stringWithFormat:@"%@%@",api,endPoint];
    NSURL *URL = [NSURL URLWithString:requestEndPoint];
    NSURLRequest *request = [NSURLRequest requestWithURL:URL];
    
    NSURLSessionDataTask *dataTask = [manager dataTaskWithRequest:request completionHandler:^(NSURLResponse *response, id responseObject, NSError *error) {
        if (error) {
           callbackBlock(nil, error);
        } else {
            callbackBlock(responseObject, nil);
            
//            NSLog(@"%@ %@", response, responseObject);
        }
    }];
    [dataTask resume];
}

+(void) getSubmissions: (NSString *) uid callback: (void (^)(id response, NSError *))callbackBlock {
    
    NSString *path =  [NSString stringWithFormat:@"/subs-user/%@", uid];
    [UHClient request:path callback:callbackBlock];
    
}

+(void) isValidUser: (NSString *) username callback: (void (^)(id response, NSError *))callbackBlock {
    NSString *path = [NSString stringWithFormat:@"/uname2uid/%@", username];
    [UHClient request:path callback:callbackBlock];
}
@end
