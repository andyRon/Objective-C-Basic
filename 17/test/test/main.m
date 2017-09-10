//
//  main.m
//  test
//
//  Created by andyron on 16/8/30.
//  Copyright © 2016年 andyron. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        NSLog(@"Hello, World!");
//        NSDate *date = [NSDate date];
//        NSLog(@"today is %@", date);
//        NSDate *yesterday = [NSDate dateWithTimeIntervalSinceNow: -(24*3600)];
//        NSLog(@"yesterday is %@", yesterday);
        
//        const *string = "Hi there, this is a C string!";
//        NSData *data = [NSData dataWithBytes: string length: strlen(string)+1];
//        NSLog(@"data is %@", data);
        
//        NSArray *phrase;
//        phrase = [NSArray arrayWithObjects:@"I", @"seem", @"to", @"be", @"a", @"verb", nil];
//        [phrase writeToFile:@"/tmp/verbiage.txt" atomically:YES];
//        NSArray *phrase2;
//        phrase2 = [NSArray arrayWithContentsOfFile:@"/tmp/verbiage.txt"];
//        NSLog(@"%@", phrase2);
        
        NSString *error = nil;
        NSData *encodedArray = [NSPropertyListSerialization dataFromPropertyList:@"capitols" format:NSPropertyListBinaryFormat_v1_0 errorDescription:&error];
        [encodedArray writeToFile:@"/tmp/capitols.txt" atomically:YES];
        
    }
    return 0;
}
