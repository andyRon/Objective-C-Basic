//
//  ViewController.m
//  CaseTool
//
//  Created by andyron on 16/8/29.
//  Copyright © 2016年 andyron. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
     NSLog(@"viewDidLoad: text %@ / result %@", _textField, _resultsField);
    [_textField setPlaceholder:@"Enter text here"];
    [_resultsField setText:@"Results"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)uppercase {
    NSString *orginal = [_textField text];
    NSString *uppercase = [orginal uppercaseString];
    [_resultsField setText:uppercase];
}

- (IBAction)lowercase {
    NSString *orginal = [_textField text];
    NSString *lowercase = [orginal lowercaseString];
    [_resultsField setText:lowercase];
}
@end
