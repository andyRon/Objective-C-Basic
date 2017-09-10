//
//  AppDelegate.m
//  CaseTool
//
//  Created by andyron on 16/8/29.
//  Copyright © 2016年 andyron. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()



@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


- (IBAction)uppercase:(id)sender {
    NSString *orginal = [_textField stringValue];
    NSString *uppercase = [orginal uppercaseString];
    [_resultsField setStringValue:uppercase];
}

- (IBAction)lowercase:(id)sender {
    NSString *orginal = [_textField stringValue];
    NSString *lowercase = [orginal lowercaseString];
    [_resultsField setStringValue:lowercase];
}

- (id) init
{
    if (nil != (self = [super init])) {
        NSLog(@"init: text %@ / result %@", _textField, _resultsField);
    }
    return self;
    
}
// 建立连接后调用（nib文件中对象地址添加到AppDelegate的实例变量中）
- (void) awakeFromNib
{
     NSLog(@"awake: text %@ / result %@", _textField, _resultsField);
    [_textField setStringValue:@"Enter text here"];
    [_resultsField setStringValue:@"Results"];
}
@end
