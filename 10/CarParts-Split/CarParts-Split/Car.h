//
//  Car.h
//  CarParts-Split
//
//  Created by andyron on 16/2/4.
//  Copyright © 2016年 andyron. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Engine;
@class Tire;

@interface Car : NSObject
{
    NSMutableArray *tires;
    Engine *engine;
}
- (Engine *) engine;
- (void) setEngine: (Engine *) newEngine;
- (Tire *) tireAtIndex: (int) index;
- (void) setTire: (Tire *) tire atIndex: (int) index;
- (void)print;
@end //Car

