//
//  unitTestDemoTests.m
//  unitTestDemoTests
//
//  Created by Jean Sung on 9/18/14.
//  Copyright (c) 2014 Jean Sung. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Model.h"

@interface unitTestDemoTests : XCTestCase {
    Model* _model;
}

@end

@implementation unitTestDemoTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    _model = [[Model alloc] init];
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}


- (void) testValues
{
    XCTAssertTrue([_model convertToFarenheit:0 ] == 32, @"Converting 0");
    XCTAssertTrue([_model convertToFarenheit: -40]==-40, @"Converting -40");
}

-(void) testExtrema
{
    int maxValue = (int)((2147483647.0 - 32.0) * 5.0 / 9.0) + 1;
    int minValue = (int)((-2147483647.0 - 32.0) * 5.0 / 9.0) -1;
    XCTAssertThrowsSpecific([_model convertToFarenheit:maxValue], NSException, @"Converting more than max value");
    XCTAssertThrowsSpecific([_model convertToFarenheit:minValue], NSException, @"Converting less than min value");
    
}
@end
