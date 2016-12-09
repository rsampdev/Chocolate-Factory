//
//  Chocolate_FactoryTests.swift
//  Chocolate FactoryTests
//
//  Created by Rodney Sampson on 12/8/16.
//  Copyright © 2016 com.rsampdev. All rights reserved.
//

import XCTest
@testable import ChocolateFactory

class Chocolate_FactoryTests: XCTestCase {
    
    func testChocolateFactoryStockingPass() {
        let factory = ChocolateFactory()
        
        factory.stock(24)
        
        XCTAssertEqual(factory.smallChocolateBars, 4)
        XCTAssertEqual(factory.bigChocolateBars, 4)
    }
    
    func testChocolateFactoryStockingFail() {
        let factory = ChocolateFactory()
        
        factory.stock(31)
        
        XCTAssertNotEqual(factory.smallChocolateBars, 26)
        XCTAssertNotEqual(factory.bigChocolateBars, 5)
    }
    
    func testChocolateFactoryStockingNoBigBars() {
        let factory = ChocolateFactory()
        
        factory.stock(4)
        
        XCTAssertEqual(factory.smallChocolateBars, 4)
        XCTAssertEqual(factory.bigChocolateBars, 0)
    }
    
    func testChocolateFactoryStockingNoSmallBars() {
        let factory = ChocolateFactory()
        
        factory.stock(5)
        
        XCTAssertEqual(factory.smallChocolateBars, 0)
        XCTAssertEqual(factory.bigChocolateBars, 1)
    }
    
    func testChocolateFactoryStockingNegativeNumbers() {
        let factory = ChocolateFactory()
        
        factory.stock(-10)
        
        XCTAssertEqual(factory.smallChocolateBars, 0)
        XCTAssertEqual(factory.bigChocolateBars, 0)
    }
    
}
