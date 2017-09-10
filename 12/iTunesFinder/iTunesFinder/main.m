//
//  main.m
//  iTunesFinder
//
//  Created by andyron on 16/2/14.
//  Copyright © 2016年 andyron. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "iTunesFinder.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSNetServiceBrowser *browser = [[NSNetServiceBrowser alloc] init];
        iTunesFinder *finder = [[iTunesFinder alloc] init];
        
        [browser setDelegate:finder];
        [browser searchForServicesOfType:@"_daap._tcp" inDomain:@"local."];
        
        NSLog(@"begun browsing");
        [[NSRunLoop currentRunLoop] run];
        
//        NSNetServiceBrowserDelegate
    }
    return 0;
}
