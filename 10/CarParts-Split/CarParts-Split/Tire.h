//
//  Tire.h
//  CarParts-Split
//
//  Created by andyron on 16/2/3.
//  Copyright © 2016年 andyron. All rights reserved.
//

#import <Foundation/Foundation.h>
// 轮胎
@interface Tire : NSObject
{
    float pressure;  //轮胎压力
    float treadDepth;  //胎面花纹深度
}
- (void) setPressure:(float) pressure;
- (float) pressure;
- (void) setTreadDepth:(float) treadDepth;
- (float) treadDepth;

// 不同的初始化方法
- (id) initWithPressure: (float) pressure treadDepth: (float) treadDepth;
- (id) initWithPressure: (float) pressuer;
- (id) initWithTreadDepth: (float) treadDepth;
@end
