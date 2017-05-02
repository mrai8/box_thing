//
//  box.h
//  box_thing
//
//  Created by Mandeep on 2017-05-02.
//  Copyright © 2017 Mandeep. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject

@property (nonatomic) float boxHeight;
@property (nonatomic) float boxWidth;
@property (nonatomic) float boxLength;

- (instancetype) initWithH:(float)boxHeight withW:(float)boxWidth withL:(float)boxLength;

- (float) boxVolume;

- (int) fitInto:(Box *) box1;





@end
