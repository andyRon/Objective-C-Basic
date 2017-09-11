//
//  main.m
//  Square
//
//  Created by andyron on 2017/9/11.
//  Copyright © 2017年 andyron. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        
        int (^square_block)(int number) = ^(int number) {return (number * number);};
        int result = square_block(5);
        printf("Result = %d\n", result);
        
        void (^theBlock)(void) = ^{ printf("Hello Blocks!\n"); };
      
        
        int value = 6;
        int (^multiply_block)(int number) = ^(int number) { return (value * number);};
        value = 8;
        int result2 = multiply_block(7);
        printf("Result2 = %d\n", result2);
        
        NSArray *array = [NSArray arrayWithObjects:@"Amir", @"Mishal", @"Irrum", @"Adam", nil];
        NSLog(@"Unsorted Array %@", array);
        NSArray *sorteArray = [array sortedArrayUsingComparator:^(NSString *objet1, NSString *object2) {
            return [objet1 compare:object2];
        }];
        NSLog(@"Sorted Array %@", sorteArray);
        
        typedef double (^MKSampleMultiply2BlockRef)(double c, double d);
        MKSampleMultiply2BlockRef multiply2 = ^(double c, double d) { return c * d; };
        printf("%f, %f", multiply2(4, 5), multiply2(5,3));
        typedef void (^MKSampleVoidBlockRef)(void);
        typedef void (^MKSampleStringBlockRef)(NSString *);
        
        
        
        typedef double (^MKSampleMultiplyBlockRef)(void);
        
//        double a = 10, b = 20;
//        MKSampleMultiplyBlockRef multiply = ^(void){ return a * b; };
//        NSLog(@"%f", multiply());  // 200.0
//        a = 20;
//        b = 50;
//        NSLog(@"%f", multiply());  // 200.0

//        static double a = 10, b = 20;
//        MKSampleMultiplyBlockRef multiply = ^(void){ return a * b; };
//        NSLog(@"%f", multiply());    // 200.0
//        a = 20; b = 50;
//        NSLog(@"%f", multiply());    // 1000.0

        
        
//        double c = 3;
//        MKSampleMultiplyBlockRef multiply = ^(void) { c = 5; return c; };
        // Variable is not assignable (missing __block type specifier)
        __block double c = 3;
        MKSampleMultiplyBlockRef multiply = ^(void) { c = 5; return c; };
        
        
        
    }
    return 0;
}

void (*my_func)(void);

void (^my_block)(void);


