//
//  ViewController.h
//  CaseTool
//
//  Created by andyron on 16/8/29.
//  Copyright © 2016年 andyron. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *resultsField;
- (IBAction)uppercase;
- (IBAction)lowercase;


@end

