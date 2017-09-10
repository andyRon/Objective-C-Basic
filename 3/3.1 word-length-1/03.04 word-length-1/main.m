//
//  main.m
//  03.04 word-length-1
//
//  Created by andyron on 15/1/6.
//  Copyright (c) 2015年 andyron. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    const char *words[4] = {"dsafdvf","lidlscd","aqqeren","adfklluj"};
    int wordCount = 4;
    for (int i=0; i<wordCount; i++) {
        NSLog(@"'%s' is '%lu' character long.", words[i], strlen(words[i]));
    }
    return 0;
}
