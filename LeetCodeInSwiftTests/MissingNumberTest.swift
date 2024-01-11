//
//  MissingNumberTest.swift
//  LeetCodeInSwiftTests
//
//  Created by Ramill Ibragimov on 11.01.2024.
//

import XCTest
@testable import LeetCodeInSwift

final class MissingNumberTest: XCTestCase {

    let mn = MissingNumber()

    func testExample1() throws {
      
        XCTAssertEqual(mn.missingNumber([3, 0, 1]), 2)
    }

    func testExample2() throws {
      
        XCTAssertEqual(mn.missingNumber([0, 1]), 2)
    }
    
    func testExample3() throws {
      
        XCTAssertEqual(mn.missingNumber([1]), 0)
    }
    
    func testExample4() throws {
      
        XCTAssertEqual(mn.missingNumber([2, 1, 0, 3]), 4)
    }
}
