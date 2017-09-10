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
   
//    Car *car = [Car new];
//    
//    Engine *engine = [Slant6 new];
//    [car setEngine:engine];
//    for (int i=0; i<4; i++) {
//        Tire *tire = [AllWeatherRadial new];
//        [car setTire:tire atIndex:i];
//    }
//    
//    [car print];
    
    @autoreleasepool {
        Car *car = [[Car alloc] init];
        for (int i=0; i<4; i++) {
            Tire *tire;
//            tire = [[Tire alloc] init];
//            [tire setPressure:23+i]; [tire setTreadDepth:32-i];
            tire = [[AllWeatherRadial alloc] initWithPressure:23+i treadDepth:32-i];
            [car setTire:tire atIndex:i];
            [tire release];
        }
        Engine *engine = [[Slant6 alloc] init];
        [car setEngine:engine];
        [car print];
        [car release];
    }
    
    
    
    NSString *emptyString = [[NSString alloc] init];
    NSString *string = [[NSString alloc] initWithFormat:@"%d or %d", 1, 2];
    NSError *error = nil;
    NSString *string1 = [[NSString alloc] initWithContentsOfFile:@"/tmp/words.txt" encoding:NSUTF8StringEncoding error:&error];
    if (nil != error) {
        NSLog(@"未能读取文件数据：%@", [error localizedDescription]);
    }
    
    
    return 0;
}
