//
//  JSViewController.h
//  unitTestDemo
//
//  Created by Jean Sung on 9/18/14.
//  Copyright (c) 2014 Jean Sung. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JSViewController : UIViewController

@property(weak, nonatomic) IBOutlet UITextField* celsiusValueTextField;
@property(weak, nonatomic) IBOutlet UILabel* farenheitValueLabel;

-(IBAction)celsiusValueEntered:(id)sender;


@end
