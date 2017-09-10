//
//  NSString+NumberConvenience.m
//  LengthAsNSNumber
//
//  Created by andyron on 16/2/14.
//  Copyright © 2016年 andyron. All rights reserved.
//

#import "NSString+NumberConvenience.h"

@implementation NSString (NumberConvenience)
- (NSNumber *) lengthAsNumber
{
    NSUInteger length = [self length];
    return ([NSNumber numberWithUnsignedInt:length]);
} // lengthAsNumber
@end
