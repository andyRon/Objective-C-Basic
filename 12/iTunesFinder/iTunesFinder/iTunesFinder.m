//
//  iTunesFinder.m
//  iTunesFinder
//
//  Created by andyron on 16/2/14.
//  Copyright © 2016年 andyron. All rights reserved.
//

#import "iTunesFinder.h"

@implementation iTunesFinder
- (void) netServiceBrowser:(NSNetServiceBrowser *)b
            didFindService:(NSNetService *)service
                moreComing:(BOOL)moreComing
{
    [service resolveWithTimeout:10];
    
    NSLog(@"found one! Name is %@", [service name]);
    
} // didFindService

- (void) netServiceBrowser:(NSNetServiceBrowser *)b
          didremoveservice:(NSNetService *)service
                moreComing:(BOOL)moreComing
{
    [service resolveWithTimeout:10];
    
    NSLog(@"lost one! Name is %@", [service name]);
    
} // didremoveservice

@end
