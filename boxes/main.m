//
//  main.m
//  boxes
//
//  Created by Yongwoo Huh on 1/16/18.
//  Copyright © 2018 YongwooHuh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Box *box1 = [[Box alloc] initWithHeight:3.0 WithWidth:4.0 WithLength:5.0];
        float volume = [box1 calculateVolume];
        
        Box *box2 = [[Box alloc] initWithHeight:10.0 WithWidth:10.0 WithLength:10.0];
        
        NSLog(@"The volume for a cube with heigth: %.2f width: %.2f length:%.2f is %.2f", box1.height, box1.width, box1.length, volume);
        
        
        if ([box1 calculateVolume] > [box2 calculateVolume]) {
            NSLog(@"box2 can go into box1 %d times",[box2 boxesInBox:box1]);
        } else {
            NSLog(@"box1 can go into box2 %d times",[box2 boxesInBox:box1]);
        }
        
        
    }
    return 0;
}
