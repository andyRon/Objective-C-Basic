//
//  main.m
//  1
//
//  Created by andyron on 16/2/4.
//  Copyright © 2016年 andyron. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Tire : NSObject

@end
@implementation Tire



@end


int main(int argc, const char * argv[]) {
    
    
    NSRange range;
    range.location = 12;
    range.length = 5;
    
//    NSRange range2 = {12, 5};
//    
//    NSRange range3 = NSMakeRange(12, 5);
    
    
//    CGPoint
    NSString *height;
    height = [NSString stringWithFormat:@"%d, %d", 4, 3];
    
//    NSUInteger length = [height length];
    
    NSString *china = @"我们";
    NSLog(@"%lu", [china length]);
//    printf("%d", length);
    
    NSString *thing1 = @"hello 5";
    NSString *thing2 = [NSString stringWithFormat:@"hello %d", 5];
    
    
    if ([thing1 isEqualToString:thing2]) {
        NSLog(@"两个字符串内容相同");
    }
    
    if (thing1 == thing2) {
        NSLog(@"两个字符串是同一个对象");
    }
//    [thing1 compare:(nonnull NSString *) options:<#(NSStringCompareOptions)#>]
//    [thing1 rangeOfString:<#(nonnull NSString *)#>
    
//    if ([height isEqualToString:thing]) {
//        
//    } else {
//        NSLog(@"adf");
//    }
//    if (![height compare:thing]) {
//        NSLog(@"adcc");
//    }
    
    
    
    NSMutableString *string = [NSMutableString stringWithCapacity:50];
    [string appendString:@"Hello there "];
    [string appendFormat:@"human %d!", 39];
    NSLog(@"%@", string);
    
    NSMutableString *friends = [NSMutableString stringWithCapacity:50];
    [friends appendString:@"James BethLynn Jack Evan"];
    NSRange jackRange = [friends rangeOfString:@"Jack"];
    jackRange.length++;
    [friends deleteCharactersInRange:jackRange]; // James BethLynn Evan
    NSLog(@"%@", friends);
    
    NSArray *array = [NSArray arrayWithObjects:@"one", @"two", @"three", nil];
    NSArray *array2 = @[@"one", @"two", @"three"];
    
    [array count];
    
    [array objectAtIndex:1];
    array[1];
    
    NSMutableString *string2 = @"oop:ack:bork:greeble:ponies";
    NSArray *chunks = [string2 componentsSeparatedByString:@":"];
    string2 = [chunks componentsJoinedByString:@":-)"];
    NSLog(@"%@", string2);
    
    NSMutableArray *array3 = [NSMutableArray arrayWithCapacity:17];
    
//    NSEnumerator *emumerator = [array objectEnumerator];
//    while (id thingie = [emumerator nextObject]) {
//
//    }
    
    // 创建 NSDictionary
    Tire *t1 = [Tire new];
    Tire *t2 = [Tire new];
    Tire *t3 = [Tire new];
    Tire *t4 = [Tire new];
    NSDictionary *tires = [NSDictionary dictionaryWithObjectsAndKeys:t1, @"front-left", t2, @"front-right", t3, @"back-left", t4, @"back-right", nil];
//    NSDictionary *tires = @{@"front-left": t1, @"front-right": t2, @"back-left": t3,@"back-right": t4,};
    // 访问特定key的对象
    Tire *tire = [tires objectForKey:@"back-right"];
//    Tire *tire = tires[@"back-right"];
    
    // 创建NSMutableDictionary
    NSMutableDictionary *tires_m = [NSMutableDictionary dictionaryWithCapacity:10];
//    NSMutableDictionary *tires_m = [NSMutableDictionary dictionary];
    // 为NSMutableDictionary添加元素
    [tires_m setObject:t1 forKey:@"front-left"];
    // 从NSMutableDictionary中删除元素
    [tires_m removeObjectForKey:@"front-left"];
    
    return 0;
}
