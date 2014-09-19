//
//  Model.m
//  unitTestDemo
//
//  Created by Jean Sung on 9/18/14.
//  Copyright (c) 2014 Jean Sung. All rights reserved.
//

#import "Model.h"

@implementation Model

-(int) convertToFarenheit:(int)celsisusValue
{
    int maxValue = (int)((2147483647.0 - 32.0) * 5.0 / 9.0) + 1;
    int minValue = (int)((-2147483647.0 - 32.0) * 5.0 / 9.0) -1;
    NSAssert(celsisusValue < maxValue, @"Invalid: input is too large");
    NSAssert(celsisusValue > minValue, @"Invalid: input is too small");
    return (int) ( ((float) celsisusValue) * 9.0 / 5.0 + 32.0 );
}

@end
