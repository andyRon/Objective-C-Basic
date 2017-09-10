//
//  CategoryThing.m
//  CategoryThing
//
//  Created by andyron on 16/2/14.
//  Copyright © 2016年 andyron. All rights reserved.
//

#import "CategoryThing.h"

@implementation CategoryThing

- (NSString *) description
{
    NSString * desc;
    desc = [NSString stringWithFormat:@"%d %d %d", thing1, thing2, thing3];
    return desc;
}
- (void) setThing4: (NSInteger) t4
{
    
}
@end
