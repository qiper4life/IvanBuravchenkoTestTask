//
//  ITWalksController.m
//  IvanBuravchenkoTest
//
//  Created by Vladimir Kalinichenko on 2/9/17.
//  Copyright © 2017 test. All rights reserved.
//

#import "ITWalksController.h"

@implementation ITWalksController

static NSString *walkAPI = @"http://www.ifootpath.com/API/get_walks.php";

- (void)getWalksWithSuccessCompletionHandler:(void (^)(NSArray<ITWalk *> *walks))completionHandler
             failureSuccessCompletionHandler:(void (^)(NSError *error))failureCompletion {
    NSURL *url = [NSURL URLWithString:walkAPI];
    NSURLSessionDataTask *task = [[NSURLSession sharedSession] dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error) {
            if (failureCompletion) {
                failureCompletion(error);
            }
        } else {
            NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSArray<ITWalk *> *walks = [self getWalksFromJSON:json];
            if (completionHandler) {
                completionHandler(walks);
            }
        }
    }];
    [task resume];
}

- (NSArray<ITWalk *> *)getWalksFromJSON:(NSDictionary *)json {
    NSArray<NSDictionary *> *walksAsJSON = json[@"walks"];
    NSMutableArray<ITWalk *> *walks = [NSMutableArray new];
    for (NSDictionary *walkAsJSON in walksAsJSON) {
        ITWalk *walk = [[ITWalk alloc] initWithJSON:walkAsJSON];
        [walks addObject:walk];
    }
    return walks;
}

@end
