//
//  JSViewController.m
//  unitTestDemo
//
//  Created by Jean Sung on 9/18/14.
//  Copyright (c) 2014 Jean Sung. All rights reserved.
//

#import "JSViewController.h"
#import "Model.h"

@interface JSViewController () {
    Model* model;
}

@end

@implementation JSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    model = [[Model alloc] init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)celsiusValueEntered:(id)sender
{
    int fahrenheit = [model convertToFarenheit:[self.celsiusValueTextField.text integerValue]];
    self.farenheitValueLabel.text = [NSString stringWithFormat:@"%d", fahrenheit];
}
@end
