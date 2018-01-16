//
//  Box.m
//  boxes
//
//  Created by Yongwoo Huh on 1/16/18.
//  Copyright © 2018 YongwooHuh. All rights reserved.
//

#import "Box.h"

@implementation Box

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.height = 0.0;
        self.width = 0.0;
        self.length = 0.0;
    }
    return self;
}

- (instancetype)initWithHeight:(float)height WithWidth:(float)width WithLength:(float)length
{
    self = [super init];
    if (self) {
        self.height = height;
        self.width = width;
        self.length = length;
    }
    return self;
}

- (float)calculateVolume
{
    return self.height * self.width * self.length;
}

- (int)boxesInBox:(Box *)box
{
    int numberOfBoxes;
    
    if ( [box calculateVolume] > [self calculateVolume]) {
        numberOfBoxes = (int)[box calculateVolume] / [self calculateVolume];
    } else {
        numberOfBoxes = (int)[self calculateVolume] / [box calculateVolume];
    }
    return numberOfBoxes;
}

@end
