//
//  main.m
//  CarParts-Split
//
//  Created by andyron on 16/2/3.
//  Copyright © 2016年 andyron. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "Tire.h"
#import "Engine.h"
#import "Slant6.h"
#import "AllWeatherRadial.h"


int main(int argc, const char * argv[]) {
   
    Car *car = [Car new];
    for (int i=0; i<4; i++)
    {
        Tire *tire = [AllWeatherRadial new];
        [car setTire:tire atIndex:i];
    }
    
    Engine *engine = [Slant6 new];
    [car setEngine:engine];
    [car print];
    
//    [NSDictionary ]
    
    return 0;
}
