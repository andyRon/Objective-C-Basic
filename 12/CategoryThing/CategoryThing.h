//
//  CategoryThing.h
//  CategoryThing
//
//  Created by andyron on 16/2/14.
//  Copyright © 2016年 andyron. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CategoryThing : NSObject
{
    NSInteger thing1;
    NSInteger thing2;
    NSInteger thing3;
}
@end // CategoryThing

@interface CategoryThing (Thing1)
- (void)setThing1:(NSInteger)thing1;
- (NSInteger)thing1;
@end // CategoryThing (Thing1)

@interface CategoryThing (Thing2)
- (void)setThing2:(NSInteger)thing2;
- (NSInteger)thing2;
@end // CategoryThing (Thing2)

@interface CategoryThing (Thing3)
- (void)setThing3:(NSInteger)thing3;
- (NSInteger)thing3;
@end // CategoryThing (Thing3)

