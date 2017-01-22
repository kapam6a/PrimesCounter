//
//  PrimesCounterTests.m
//  AYAPrimesCounter
//
//  Created by Kapam6a on 22.01.17.
//  Copyright © 2017 Kapam6a. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "PrimesCounter.h"

@interface PrimesCounterTests : XCTestCase

@property (nonatomic, strong) PrimesCounter *primesCounter;

@end

@implementation PrimesCounterTests

- (void)setUp {
    [super setUp];
    self.primesCounter = [PrimesCounter new];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    self.primesCounter = nil;
    [super tearDown];
}

- (void)testThatPrimesCounterCountsSumOfThousand {
    // given
    NSInteger inputNumber = 1000;
    
    // when
    NSInteger result = [self.primesCounter countPrimesSumForNumber:inputNumber];
    
    // then
    XCTAssertEqual(result, 76127);
}

- (void)testThatPrimesCounterCountsSumOfParcticularPrime {
    // given
    NSInteger inputNumber = 997;
    
    // when
    NSInteger result = [self.primesCounter countPrimesSumForNumber:inputNumber];
    
    // then
    XCTAssertEqual(result, 76127);
}

@end
