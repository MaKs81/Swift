//
//  maksTests.swift
//  maksTests
//
//  Created by Xcode on 21/06/18.
//  Copyright © 2018 mm. All rights reserved.
//

import XCTest
@testable import maks

class maksTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let a = Animal(name: "A", weight: 1, birth: Date.init(timeIntervalSince1970: 0))
        let d =  a.description()
        
        var ok = (d == "A 1.0 1970-01-01 00:00:00 +0000")
        XCTAssert(ok, "animal failed")
        
        let a2 = Animal(name: "N", weight: 1, birth: Date.init(timeIntervalSince1970: 0))
        let d2 =  a2.description()
        
        var ok2 = (d2 == "A 1.0 1970-01-01 00:00:00 +0000")
        XCTAssert(ok2, "animal failed")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
