//
//  AllWeatherRadial.h
//  CarParts-Split
//
//  Created by andyron on 16/2/4.
//  Copyright © 2016年 andyron. All rights reserved.
//

#import "Tire.h"

@interface AllWeatherRadial : Tire
{
    // 轮胎在潮湿和积雪的道路上的性能
    float rainHandling;
    float snowHandling;
}
- (void) setRainHandling:(float)rainHandling;
- (float) rainHandling;
- (void) setSnowHandling:(float)snowHandling;
- (float) snowHandling;
@end
