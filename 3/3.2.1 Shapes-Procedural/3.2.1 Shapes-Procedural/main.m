//
//  main.m
//  3.2.1 Shapes-Procedural
//
//  Created by andyron on 16/2/2.
//  Copyright © 2016年 andyron. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    kCircle,
    kRectangle,
    kEgg,
} ShapeType;

typedef enum {
    kRedColor,
    kGreenColor,
    kBlueColor
} ShapeColor;

//不同图形元素
typedef struct {
    int x, y, width, height;
} ShapeRect;

//图形结构
typedef struct {
    ShapeType type;
    ShapeColor fillColor;
    ShapeRect bounds;
} Shape;

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

//绘制图形
void drawCircle(ShapeRect bounds, ShapeColor fillColor)
{
    NSLog(@"drawing a Circle at (%d %d %d %d) in %@", bounds.x, bounds.y, bounds.width, bounds.height, colorName(fillColor));
}
void drawRectangle(ShapeRect bounds, ShapeColor fillColor)
{
    NSLog(@"drawing a Rectangle at (%d %d %d %d) in %@", bounds.x, bounds.y, bounds.width, bounds.height, colorName(fillColor));
}
void drawEgg(ShapeRect bounds, ShapeColor fillColor)
{
    NSLog(@"drawing a Egg at (%d %d %d %d) in %@", bounds.x, bounds.y, bounds.width, bounds.height, colorName(fillColor));
}
void drawShapes(Shape shapes[], int count)
{
    for (int i=0; i<count; i++) {
        switch (shapes[i].type) {
            case kCircle:
                drawCircle(shapes[i].bounds, shapes[i].fillColor);
                break;
            case kRectangle:
                drawRectangle(shapes[i].bounds, shapes[i].fillColor);
                break;
            case kEgg:
                drawEgg(shapes[i].bounds, shapes[i].fillColor);
                break;
            default:
                break;
        }
    }
}

int main(int argc, const char * argv[]) {
    Shape shapes[3];
    
    ShapeRect rect0 = {0, 0, 10, 30};
    shapes[0].type = kCircle;
    shapes[0].fillColor = kRedColor;
    shapes[0].bounds = rect0;
    
    ShapeRect rect1 = {30, 40, 50, 60};
    shapes[1].type = kRectangle;
    shapes[1].fillColor = kGreenColor;
    shapes[1].bounds = rect1;
    
    ShapeRect rect2 = {15, 18, 37, 29};
    shapes[2].type = kEgg;
    shapes[2].fillColor = kBlueColor;
    shapes[2].bounds = rect2;
    
    drawShapes(shapes, 3);
    
    return 0;
}
