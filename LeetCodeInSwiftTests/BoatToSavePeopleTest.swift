//
//  BoatToSavePeopleTest.swift
//  LeetCodeInSwiftTests
//
//  Created by admin on 1/10/24.
//

import XCTest
@testable import LeetCodeInSwift

final class BoatToSavePeopleTest: XCTestCase {

    let btsp = BoatToSavePeople()

    func testExample1() throws {
        
        XCTAssertEqual(btsp.numRescueBoats([3, 2, 2, 1], 3), 3)
    }

    func testExample2() throws {
        
        XCTAssertEqual(btsp.numRescueBoats([1, 2], 3), 1)
    }
    
    func testExample3() throws {
        
        XCTAssertEqual(btsp.numRescueBoats([3, 2, 1, 2], 4), 2)
    }
    
    func testExample4() throws {
        
        XCTAssertEqual(btsp.numRescueBoats([3, 2, 1, 2, 3, 4, 2, 1], 4), 5)
    }
    
    func testExample5() throws {
        
        XCTAssertEqual(btsp.numRescueBoats([4, 3, 4, 2, 1, 2], 4), 4)
    }

}
