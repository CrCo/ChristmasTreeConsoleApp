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
#import "Renderer.h"


@interface TestRenderer: NSObject <Renderer>

@property NSMutableArray *array;

- (id) init;

@end

@implementation TestRenderer

- (id) init {
    self = [super init];
    if (self) {
        self.array = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void) renderLine: (int) count {
    NSNumber *num = [NSNumber numberWithInt:count];
    [self.array addObject:num];
}

@end

@interface Tests : XCTestCase

@property (nonatomic) Engine *engine;
@property (nonatomic) TestRenderer *renderer;

@end

@implementation Tests


- (void)setUp {
    [super setUp];
    self.renderer = [[TestRenderer alloc] init];
    self.engine = [[Engine alloc] initWithRenderer: self.renderer];
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

- (void)testRendering {
    [self.engine renderToRow:2];
    
    XCTAssertEqual(1, [[self.renderer.array objectAtIndex:0] intValue]);
    XCTAssertEqual(3, [[self.renderer.array objectAtIndex:1] intValue]);
}


@end
