//
//  main.m
//  LengthAsNSNumber
//
//  Created by andyron on 16/2/14.
//  Copyright © 2016年 andyron. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+NumberConvenience.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableDictionary *dict = [NSMutableDictionary dictionary];
        [dict setObject:[@"hello" lengthAsNumber] forKey:@"hello"];
        [dict setObject:[@"ilikefish" lengthAsNumber] forKey:@"ilikefish"];
        [dict setObject:[@"Once upon a time" lengthAsNumber] forKey:@"Once upon a time"];
        
        NSLog(@"%@", dict);
    }
    return 0;
}
