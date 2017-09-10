//
//  main.m
//  CarParts
//
//  Created by andyron on 16/2/3.
//  Copyright © 2016年 andyron. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import <Cocoa/Cocoa.h>

@interface Tire : NSObject
@end //Tire 轮胎
@implementation Tire
- (NSString *)description {
    return (@"I am a tire.");
}
@end

@interface Engine : NSObject
@end //Engine
@implementation Engine
- (NSString *)description {
    return (@"I am a Engine.");
}
@end

@interface Car : NSObject
{
    Engine *engine;
    Tire *tires[4];
}
- (void)print;
@end //Car
@implementation Car
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
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
