//
//  Car.m
//  CarParts-Split
//
//  Created by andyron on 16/2/4.
//  Copyright © 2016年 andyron. All rights reserved.
//

#import "Car.h"
#import "Tire.h"
#import "Engine.h"

@implementation Car
{
    Engine *engine;
    Tire *tires[4];
}
- (Engine *) engine
{
    return (engine);
} //engine
- (void) setEngine:(Engine *)newEngine
{
    engine = newEngine;
} //setEngine
- (void) setTire:(Tire *)tire atIndex:(int)index
{
    if (index<0 || index>3) {
        NSLog(@"bad index (%d) in setTire:atIndex", index);
        exit(1);
    }
    tires[index] = tire;
} // setTire
- (Tire *) tireAtIndex:(int)index
{
    if (index<0 || index>3) {
        NSLog(@"bad index (%d) in setTire:atIndex", index);
        exit(1);
    }
    return tires[index];
} // tireAtIndex

- (id)init
{
    if (self = [super init]) {  //?
        engine = [Engine new];
        tires[0] = [Tire new];
        tires[1] = [Tire new];
        tires[2] = [Tire new];
        tires[3] = [Tire new];
    }
    return (self);
}
- (void)print
{
    NSLog(@"%@", engine);
    NSLog(@"%@", tires[0]);
    NSLog(@"%@", tires[1]);
    NSLog(@"%@", tires[2]);
    NSLog(@"%@", tires[3]);
}

@end //Car
