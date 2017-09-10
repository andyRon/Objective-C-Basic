

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
    
//    Car *car = [Car new];
//    
//    Engine *engine = [Engine new];
//    [car setEngine:engine];
//    NSLog(@"the car's engine is %@", [car engine]);
//    
//    Tire *tire = [Tire new];
//    [car setTire:tire atIndex:2];
//    NSLog(@"tire number two is %@", [car tireAtIndex:2]);
    
    Car *car = [Car new];
    
    Engine *engine = [Engine new];
    [car setEngine:engine];
    for (int i=0; i<4; i++) {
        Tire *tire = [Tire new];
        [car setTire:tire atIndex:i];
    }
    
    [car print];
    
    
    return 0;
}
