//
//  UHClient.h
//  UHunting
//
//  Created by Andres Pineda on 5/13/16.
//  Copyright © 2016 AP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking/AFNetworking.h>

@interface UHClient : NSObject
@property (strong, nonatomic) NSString *API;

+(void) request: (NSString *) endPoint callback: (void (^)(id response, NSError *error))callbackBlock;
+(void) getSubmissions: (NSString *) id callback: (void (^)(id response, NSError * error))callbackBlock;
+(void) isValidUser: (NSString *) username callback: (void (^)(id response, NSError * error))callbackBlock;
+(void) getBook: (NSString *) edition callback: (void (^)(id response, NSError *))callbackBlock;
+(void) getLastSubmissions: (NSString *) lastSubID callback: (void (^)(id response, NSError *))callbackBlock;
@end
