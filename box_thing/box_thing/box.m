//
//  box.m
//  box_thing
//
//  Created by Mandeep on 2017-05-02.
//  Copyright © 2017 Mandeep. All rights reserved.
//

#import "box.h"

@implementation Box

-(instancetype)initWithH:(float)boxHeight withW:(float)boxWidth withL:(float)boxLength{
    self=[super init];
    if(self){
        _boxHeight = boxHeight;
        _boxWidth = boxWidth;
        _boxLength = boxLength;
    }
    return self;
}

- (float) boxVolume{
    return (self.boxHeight) * (self.boxWidth) * (self.boxLength);
}

- (int) fitInto:(Box *) box1{
    float b1 = [self boxVolume];
    float b2 = [box1 boxVolume];
    int fitCalc = 0;
    if (b1 > b2) {
        fitCalc = b1/b2;
    }
    return fitCalc;
}

@end
