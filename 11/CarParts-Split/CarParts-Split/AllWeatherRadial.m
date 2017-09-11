//
//  AllWeatherRadial.m
//  CarParts-Split
//
//  Created by andyron on 16/2/4.
//  Copyright © 2016年 andyron. All rights reserved.
//

#import "AllWeatherRadial.h"

@implementation AllWeatherRadial

@synthesize rainHandling;
@synthesize snowHandling;

-(NSString *)description
{
    NSString *desc;
    desc = [[NSString alloc] initWithFormat:@"AllWeatherRadial: %.1f / %.1f / %.1f / %.1f.", self.pressure, self.treadDepth, self.rainHandling, self.snowHandling];
    return desc;
}
//- (void)setRainHandling:(float)r
//{
//    rainHandling = r;
//}
//- (float)rainHandling
//{
//    return rainHandling;
//}
//- (void)setSnowHandling:(float)s
//{
//    snowHandling = s;
//}
//- (float)snowHandling
//{
//    return snowHandling;
//}

- (id) initWithPressure:(float)p treadDepth:(float)td
{
    if (self = [super initWithPressure:p treadDepth:td]) {
        rainHandling = 23.7;
        snowHandling = 58.1;
    }
    return self;
}


@end
