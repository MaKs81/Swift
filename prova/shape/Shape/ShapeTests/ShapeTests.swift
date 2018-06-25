//
//  ShapeTests.swift
//  ShapeTests
//
//  Created by Xcode on 25/06/18.
//  Copyright © 2018 mm. All rights reserved.
//

import XCTest
@testable import Shape

class ShapeTests: XCTestCase {
    
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
        let s = Shape()
        let ok = s.Area() == nil && s.Perimetro() == nil
        XCTAssert(ok, "Shape KO")
        
        let c = Circle(raggio: nil)
        XCTAssert(c==nil, "Circle KO")
        
        let cn = Circle(raggio: -1)
        XCTAssert(cn==nil, "Circle KO")
        
        if let cn10 = Circle(raggio: 10){
            let a = cn10.Area()
            XCTAssert(Int(a!) == 314, "circle aread null failed")
        }else{
            XCTAssert(false, "circle aread null failed")
        }
        
        let shapes : [Shape?] = [
            Circle(raggio: 3),
            Square(lato: 5)
        ]
        
        XCTAssert(cn==nil, "Circle KO")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
