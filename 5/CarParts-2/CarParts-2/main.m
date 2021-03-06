//
//  main.m
//  CarParts-2
//
//  Created by andyron on 16/2/3.
//  Copyright © 2016年 andyron. All rights reserved.
//

#import <Foundation/Foundation.h>

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
} //description
@end

@interface Slant6 : Engine
@end //slant-6型号的发动机
@implementation Slant6

- (NSString *)description {
    return (@"I am a slant-6型号的发动机.VROOM!");
}

@end

@interface AllWeatherRadial : Tire
@end // 新型轮胎
@implementation AllWeatherRadial

-(NSString *)description
{
    return (@"I am a tire for rain or shine.");
}

@end


@interface Car : NSObject
{
    Engine *engine;
    Tire *tires[4];
}
- (Engine *) engine;
- (void) setEngine: (Engine *) newEngine;
- (Tire *) tireAtIndex: (int) index;
- (void) setTire: (Tire *) tire atIndex: (int) index;
- (void)print;
@end //Car
@implementation Car
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
@end


int main(int argc, const char * argv[]) {
    
    Car *car = [Car new];
    
    Engine *engine = [Slant6 new];
    [car setEngine:engine];
    for (int i=0; i<4; i++) {
        Tire *tire = [AllWeatherRadial new];
        [car setTire:tire atIndex:i];
    }
    
    [car print];
    
    return 0;
}

