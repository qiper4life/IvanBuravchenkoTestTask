//
//  ITWalk.m
//  IvanBuravchenkoTest
//
//  Created by Vladimir Kalinichenko on 2/9/17.
//  Copyright © 2017 test. All rights reserved.
//

#import "ITWalk.h"

@implementation ITWalk

- (instancetype)initWithJSON:(NSDictionary *)json {
    self = [super init];
    if (self) {
        self.walkID = json[@"walkID"];
        self.walkTitle = json[@"walkTitle"];
        self.walkVersion = json[@"walkVersion"];
        self.walkDescription = json[@"walkDescription"];
        self.walkLength = json[@"walkLength"];
        self.walkGrade = json[@"walkGrade"];
        self.walkCounty = json[@"walkCounty"];
        self.walkDistrict = json[@"walkDistrict"];
        self.walkType = json[@"walkType"];
        self.ratingRating = json[@"ratingRating"];
        self.walkStartCoordLat = json[@"walkStartCoordLat"];
        self.walkStartCoordLong = json[@"walkStartCoordLong"];
        self.walkIcon = json[@"walkIcon"];
        self.walkIllustration = json[@"walkIcon"];
        self.walkPublished = json[@"walkPublished"];
        self.numsegs = json[@"numsegs"];
    }
    return self;
}


@end
