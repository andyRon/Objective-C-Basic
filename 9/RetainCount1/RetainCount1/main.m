//
//  main.m
//  RetainCount1
//
//  Created by andyron on 16/2/5.
//  Copyright © 2016年 andyron. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RetainTracker : NSObject

@end
@implementation RetainTracker

- (id) init
{
    if (self = [super init]) {
        NSLog(@"init: Retain count of %lu .", [self retainCount]);
    }
    return self;
} // init
- (void)dealloc
{
    NSLog(@"dealloc called. Bye Bye.");
    [super dealloc];
} // dealloc

@end // RetainTracker



int main(int argc, const char * argv[]) {
    RetainTracker *a = [RetainTracker new];
    
    [a retain];
    NSLog(@"%lu", [a retainCount]);
    
    [a retain];
    NSLog(@"%lu", [a retainCount]);
    
    [a release];
    NSLog(@"%lu", [a retainCount]);
    
    [a release];
    NSLog(@"%lu", [a retainCount]);
    
    [a release];
    NSLog(@"%lu", [a retainCount]);  // 为什么此处是  1 不是 0吗？
    
//    NSError *error = nil;
//    NSString *string = [[NSString alloc] initWithContentsOfFile:@"/tmp/word1.txt" encoding:NSUTF8StringEncoding error:&error];
//    if (error != nil) {
//        NSLog(@"Unable read data from file, %@", [error localizedDescription]);
//    } else {
//        NSLog(@"%@",string);
//    }
    
    return 0;
}
