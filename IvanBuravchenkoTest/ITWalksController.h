//
//  ITWalksController.h
//  IvanBuravchenkoTest
//
//  Created by Vladimir Kalinichenko on 2/9/17.
//  Copyright © 2017 test. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ITWalk.h"

@interface ITWalksController : NSObject

- (void)getWalksWithSuccessCompletionHandler:(void (^)(NSArray<ITWalk *> *walks))completionHandler
             failureSuccessCompletionHandler:(void (^)(NSError *error))failureCompletion;

@end
