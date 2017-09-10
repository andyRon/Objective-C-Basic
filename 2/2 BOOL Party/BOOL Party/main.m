//
//  main.m
//  BOOL Party
//
//  Created by andyron on 15/1/6.
//  Copyright (c) 2015年 andyron. All rights reserved.
//

#import <Foundation/Foundation.h>



NSString  *boolString(BOOL yesNo){
    if (yesNo == NO) {
        return(@"NO");
    }else{
        return(@"YES");
    }
}

BOOL areIntsDifferent(int int1, int int2){
    if(int1 == int2){
        return (NO);
    }else{
        return (YES);
    }
    
}

int main(int argc, const char * argv[]) {
    BOOL yesNo;
    
    yesNo = areIntsDifferent(10, 10);
    NSLog(@"are %d and %d different? %@",10,10,boolString(yesNo));
    
    yesNo = areIntsDifferent(2, 4);
    NSLog(@"are %d and %d different? %@",2,4,boolString(yesNo));
    return 0;
}