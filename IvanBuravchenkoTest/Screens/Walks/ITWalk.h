//
//  ITWalk.h
//  IvanBuravchenkoTest
//
//  Created by Vladimir Kalinichenko on 2/9/17.
//  Copyright © 2017 test. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ITWalk : NSObject

- (instancetype)initWithJSON:(NSDictionary *)json;

@property (nonatomic, strong) NSNumber *walkID;
@property (nonatomic, strong) NSString *walkTitle;
@property (nonatomic, strong) NSNumber *walkVersion;
@property (nonatomic, strong) NSString *walkDescription;
@property (nonatomic, strong) NSNumber *walkLength;
@property (nonatomic, strong) NSNumber *walkGrade;
@property (nonatomic, strong) NSString *walkCounty;
@property (nonatomic, strong) NSString *walkDistrict;
@property (nonatomic, strong) NSString *walkType;
@property (nonatomic, strong) NSNumber *ratingRating;
//@property (nonatomic, strong) NSString *walkSegments;
@property (nonatomic, strong) NSNumber *walkStartCoordLat;
@property (nonatomic, strong) NSNumber *walkStartCoordLong;
@property (nonatomic, strong) NSString *walkIcon;
@property (nonatomic, strong) NSString *walkIllustration;
@property (nonatomic, strong) NSString *walkPublished;
@property (nonatomic, strong) NSNumber *numsegs;

@end
