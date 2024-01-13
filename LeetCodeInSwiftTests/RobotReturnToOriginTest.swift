//
//  RobotReturnToOriginTest.swift
//  LeetCodeInSwiftTests
//
//  Created by Ramill Ibragimov on 13.01.2024.
//

import XCTest
@testable import LeetCodeInSwift

final class RobotReturnToOriginTest: XCTestCase {

    let rrto = RobotReturnToOrigin()
    
    func testExample1() throws {
        
        XCTAssertEqual(rrto.judgeCircle("UD"), true)
    }
    
    func testExample2() throws {
        
        XCTAssertEqual(rrto.judgeCircle("UDLR"), true)
    }
    
    func testExample3() throws {
        
        XCTAssertEqual(rrto.judgeCircle("UDD"), false)
    }
    
    func testExample4() throws {
        
        XCTAssertEqual(rrto.judgeCircle("UDLRU"), false)
    }

}
