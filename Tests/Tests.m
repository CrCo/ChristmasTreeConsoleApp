//
//  Tests.m
//  Tests
//
//  Created by Stephen Visser on 2015-09-07.
//  Copyright (c) 2015 Stephen Visser. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <XCTest/XCTest.h>
#import "Engine.h"

@interface Tests : XCTestCase

@property (nonatomic) Engine *engine;

@end

@implementation Tests


- (void)setUp {
    [super setUp];
    self.engine = [[Engine alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testFirstRowCountIsOne {
    
    int count = [self.engine countForRow: 1];
    XCTAssertEqual(1, count, "First row always one");
}

- (void)testFourthRowCount {
    
    int count = [self.engine countForRow: 4];
    XCTAssertEqual(7, count, "Fourth row is seven");
}


@end
