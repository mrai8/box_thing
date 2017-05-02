//
//  main.m
//  box_thing
//
//  Created by Mandeep on 2017-05-02.
//  Copyright © 2017 Mandeep. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        printf("please enter the dimensions for the first box \n");
        
        float w;
        float h;
        float l;
        
        printf("what is the box height? ");
        scanf("%f", &h);
        
        printf("what is the box width? ");
        scanf("%f", &w);
        
        printf("what is the box length? ");
        scanf("%f", &l);

        Box *myBox = [[Box alloc] initWithH:h withW:w withL:l];
    
        float vol = [myBox boxVolume];
        
        printf("The volume of this box is: %f \n", vol);
    
        printf("please enter the dimensions for the second box \n");
        
        float w2;
        float h2;
        float l2;
        
        printf("what is the box height? ");
        scanf("%f", &h2);
        
        printf("what is the box width? ");
        scanf("%f", &w2);
        
        printf("what is the box length? ");
        scanf("%f", &l2);
        
        Box *otherBox = [[Box alloc] initWithH:h2 withW:w2 withL:l2];
        
        float vol2 = [otherBox boxVolume];
        
        printf("The volume of this box is: %f \n", vol2);
        
        printf("How many times will the second box fit into the first box? \n");
        
        int fit = [myBox fitInto:otherBox];

        printf("It will fit %d times \n", fit);
    
    }
    return 0;
}
