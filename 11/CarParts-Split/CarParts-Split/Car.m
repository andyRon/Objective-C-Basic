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

@synthesize name;
@synthesize engine;


@dynamic bodyMassIndex;
- (float) bodyMassIndex
{
    return 2.3;
}

- (Engine *) engine
{
    return (engine);
} //engine
- (void) setEngine:(Engine *)newEngine
{
    [newEngine retain];
    [engine release];
    engine = newEngine;
} //setEngine

- (void) setTire:(Tire *)tire atIndex:(int)index
{
//    if (index<0 || index>3) {
//        NSLog(@"bad index (%d) in setTire:atIndex", index);
//        exit(1);
//    }
//    tires[index] = tire;
    [tires replaceObjectAtIndex:index withObject:tire];
} // setTire

- (Tire *) tireAtIndex:(int)index
{
//    if (index<0 || index>3) {
//        NSLog(@"bad index (%d) in setTire:atIndex", index);
//        exit(1);
//    }
//    return tires[index];
    Tire *tire;
    tire = [tires objectAtIndex:index];
    return tire;
} // tireAtIndex

- (id)init
{
    if (self = [super init]) {  //?
        tires = [[NSMutableArray alloc] init];
        for (int i=0; i<4; i++) {
            [tires addObject:[NSNull null]];  // NSNull 为占位符
        }
    }
    return (self);
}
- (void)print
{
    NSLog(@"%@ has:", name);
    
    for (int i=0; i<4; i++) {
        NSLog(@"%@", [self tireAtIndex:i]);
    }
    NSLog(@"%@", engine);

}
- (void) dealloc
{
    [tires release];
    [engine release];
    [super dealloc];
}
@end //Car
