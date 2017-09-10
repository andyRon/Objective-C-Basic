//
//  Things.h
//  ClassExtension
//
//  Created by andyron on 16/2/14.
//  Copyright © 2016年 andyron. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Things : NSObject

@property (assign) NSInteger thing1;
@property (readonly, assign) NSInteger thing2;

- (void)resetAllValues;

@end
