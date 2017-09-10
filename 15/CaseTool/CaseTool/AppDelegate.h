//
//  AppDelegate.h
//  CaseTool
//
//  Created by andyron on 16/8/29.
//  Copyright © 2016年 andyron. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>
@property (assign) IBOutlet NSWindow *window;

@property (weak) IBOutlet NSTextField *textField;
@property (weak) IBOutlet NSTextField *resultsField;

- (IBAction)uppercase:(id)sender;
- (IBAction)lowercase:(id)sender;
@end

