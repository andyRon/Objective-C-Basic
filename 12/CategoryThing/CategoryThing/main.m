//
//  main.m
//  CategoryThing
//
//  Created by andyron on 16/2/14.
//  Copyright © 2016年 andyron. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CategoryThing.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        CategoryThing *thing = [[CategoryThing alloc] init];
        [thing setThing1:3];
        [thing setThing2:5];
        [thing setThing3:13];
        
//        [thing setThing4:45];
        
        NSLog(@"Things are %@", thing);
    }
    return 0;
}
