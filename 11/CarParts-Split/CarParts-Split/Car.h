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
    NSString *name;
}
//- (Engine *) engine;
//- (void) setEngine: (Engine *) newEngine;
- (Tire *) tireAtIndex: (int) index;
- (void) setTire: (Tire *) tire atIndex: (int) index;
- (void)print;

@property (copy) NSString *name;
@property (retain) Engine *engine;

@property (readonly) float bodyMassIndex;
@property (getter=isHidden) BOOL hidden;

//@property (nonatomic, assign, atomic)
@end //Car

