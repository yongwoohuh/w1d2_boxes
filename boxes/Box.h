//
//  Box.h
//  boxes
//
//  Created by Yongwoo Huh on 1/16/18.
//  Copyright © 2018 YongwooHuh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject

@property (nonatomic) float height;
@property (nonatomic) float width;
@property (nonatomic) float length;

- (instancetype)initWithHeight:(float)height WithWidth:(float)width WithLength:(float)length;

- (float)calculateVolume;
- (int)boxesInBox:(Box *)box;

@end
