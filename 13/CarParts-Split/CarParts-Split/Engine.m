//
//  Engine.m
//  CarParts-Split
//
//  Created by andyron on 16/2/3.
//  Copyright © 2016年 andyron. All rights reserved.
//

#import "Engine.h"

@implementation Engine
- (NSString *)description {
    return (@"I am a Engine.");
} //description
- (id)copyWithZone:(NSZone *)zone
{
    Engine *engineCopy;
    engineCopy = [[[self class] allocWithZone:zone] init];
    return engineCopy;
}
@end
