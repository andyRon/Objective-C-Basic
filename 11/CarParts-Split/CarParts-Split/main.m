//
//  main.m
//  CarParts-Split
//
//  Created by andyron on 16/2/3.
//  Copyright © 2016年 andyron. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "Tire.h"
#import "Engine.h"
#import "Slant6.h"
#import "AllWeatherRadial.h"


int main(int argc, const char * argv[]) {
   

    
    @autoreleasepool {
        Car *car = [[Car alloc] init];
        
//        float a = car.bodyMassIndex;
        BOOL b = [car isHidden];
        
        
        
        [car setName:@"Herbie"];
        for (int i=0; i<4; i++) {
            AllWeatherRadial *tire;
//            tire = [[Tire alloc] init];
//            [tire setPressure:23+i]; [tire setTreadDepth:32-i];
            tire = [[AllWeatherRadial alloc] initWithPressure:23+i treadDepth:32-i];
            
            NSLog(@"tire %d's handling is %.f, %.f", i, tire.rainHandling, tire.snowHandling);
            [car setTire:tire atIndex:i];
            [tire release];
        }
        Engine *engine = [[Slant6 alloc] init];
        [car setEngine:engine];
        [car print];
        [car release];
    }
    
    return 0;
}
