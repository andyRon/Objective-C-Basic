//
//  main.m
//  3.2.2 Shapes-Object
//
//  Created by andyron on 16/2/2.
//  Copyright © 2016年 andyron. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    kRedColor,
    kGreenColor,
    kBlueColor
} ShapeColor;

//不同图形元素
typedef struct {
    int x, y, width, height;
} ShapeRect;

//颜色函数
NSString *colorName(ShapeColor fillColor)
{
    switch (fillColor) {
        case kRedColor:
            return @"red";
            break;
        case kGreenColor:
            return @"green";
            break;
        case kBlueColor:
            return @"blue";
            break;
            
    }
    return @"no clue";
}


@interface Circle : NSObject
{
    @private
    ShapeColor fillColor;
    ShapeRect bounds;
}
- (void) setFillColor: (ShapeColor) fillColor;
- (void) setBounds: (ShapeRect) bounds;
- (void) draw;

@end  //Circle
@implementation Circle
- (void) setFillColor:(ShapeColor) c
{
    fillColor = c;
}

- (void) setBounds:(ShapeRect) b
{
    bounds = b;
}

- (void) draw
{
    NSLog(@"drawing a Circle at (%d %d %d %d) in %@", bounds.x, bounds.y, bounds.width, bounds.height, colorName(fillColor));
}
@end


@interface Rectangle : NSObject
{
@private
    ShapeColor fillColor;
    ShapeRect bounds;
}
- (void) setFillColor: (ShapeColor) fillColor;
- (void) setBounds: (ShapeRect) bounds;
- (void) draw;

@end  //Rectangle

@implementation Rectangle
- (void) setFillColor:(ShapeColor) c
{
    fillColor = c;
}

- (void) setBounds:(ShapeRect) b
{
    bounds = b;
}

- (void) draw
{
    NSLog(@"drawing a Rectangle at (%d %d %d %d) in %@", bounds.x, bounds.y, bounds.width, bounds.height, colorName(fillColor));
}
@end


@interface Egg : NSObject
{
@private
    ShapeColor fillColor;
    ShapeRect bounds;
}
- (void) setFillColor: (ShapeColor) fillColor;
- (void) setBounds: (ShapeRect) bounds;
- (void) draw;

@end  //Egg

@implementation Egg
- (void) setFillColor:(ShapeColor) c
{
    fillColor = c;
}

- (void) setBounds:(ShapeRect) b
{
    bounds = b;
}

- (void) draw
{
    NSLog(@"drawing a Egg at (%d %d %d %d) in %@", bounds.x, bounds.y, bounds.width, bounds.height, colorName(fillColor));
}
@end


// 补充一个三角形
@interface Triangle : NSObject
{
@private
    ShapeColor fillColor;
    ShapeRect bounds;
}
- (void) setFillColor: (ShapeColor) fillColor;
- (void) setBounds: (ShapeRect) bounds;
- (void) draw;

@end  //Triangle

@implementation Triangle
- (void) setFillColor:(ShapeColor) c
{
    fillColor = c;
}

- (void) setBounds:(ShapeRect) b
{
    bounds = b;
}

- (void) draw
{
    NSLog(@"drawing a Triangle at (%d %d %d %d) in %@", bounds.x, bounds.y, bounds.width, bounds.height, colorName(fillColor));
}
@end


void drawShapes(id shapes[], int count)
{
    for (int i=0; i<count; i++) {
        id shape = shapes[i];
        [shape draw];
    }
}

int main(int argc, const char * argv[]) {
    
    id shapes[4];
    
    ShapeRect rect0 = {0, 0, 10, 30};
    shapes[0] = [Circle new];
    [shapes[0] setBounds:rect0];
    [shapes[0] setFillColor:kRedColor];
    
    ShapeRect rect1 = {30, 40, 50, 60};
    shapes[1] = [Rectangle new];
    [shapes[1] setBounds:rect1];
    [shapes[1] setFillColor:kGreenColor];

    ShapeRect rect2 = {15, 18, 37, 29};
    shapes[2] = [Egg new];
    [shapes[2] setBounds:rect2];
    [shapes[2] setFillColor:kBlueColor];
    
    ShapeRect rect3 = {3, 4, 5, 0};
    shapes[3] = [Triangle new];
    [shapes[3] setBounds:rect3];
    [shapes[3] setFillColor:kBlueColor];
    
    drawShapes(shapes, 4);
    
    return 0;
}
