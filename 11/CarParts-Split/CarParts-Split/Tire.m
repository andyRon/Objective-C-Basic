//
//  Tire.m
//  CarParts-Split
//
//  Created by andyron on 16/2/3.
//  Copyright © 2016年 andyron. All rights reserved.
//

#import "Tire.h"

@implementation Tire
//#pragma mark -
- (NSString *)description {
    NSString *desc = [[NSString alloc] initWithFormat:@"I'm a tire.Pressure is %.1f, TreadDepth is %.1f.", pressure, treadDepth];
    return desc;
} //description

- (id) init
{
    if (self = [super init]) {
        pressure = 34.0;
        treadDepth = 20.0;
    }
    return self;
}
- (void) setPressure:(float)p
{
    pressure = p;
}
- (float) pressure
{
    return pressure;
}
- (void) setTreadDepth:(float)t
{
    treadDepth = t;
}
- (float) treadDepth
{
    return treadDepth;
}

- (id) initWithPressure:(float)p treadDepth:(float)td
{
    if (self = [super init]) {
        pressure = p;
        treadDepth = td;
    }
    return self;
}
- (id) initWithPressure:(float)p
{
    if (self = [super init]) {
        pressure = p;
        treadDepth = 34.0;  //默认值
    }
    return self;
}
- (id) initWithTreadDepth:(float)td
{
    if (self = [super init]) {
        pressure = 24.0;
        treadDepth = td;
    }
    return self;
}
@end
