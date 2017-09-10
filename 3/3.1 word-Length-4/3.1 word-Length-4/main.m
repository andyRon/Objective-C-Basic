//
//  main.m
//  3.1 word-Length-4
//
//  Created by andyron on 16/1/26.
//  Copyright © 2016年 andyron. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    if (argc == 1) {
        NSLog(@"you need provide a file name");
        return 1;
    }
    FILE *wordFile = fopen(argv[1], "r");
    int sum = 0;
    char word[100];
    while (fgets(word, 100, wordFile)) {
         word[strlen(word) - 1] = '\0';
        NSLog(@"%s is %lu characters long\n", word, strlen(word));
        sum++;
    }
    NSLog(@"%d",sum);
    fclose(wordFile);
    return 0;
}
