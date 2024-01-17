//
//  MajorityElementTest.swift
//  LeetCodeInSwiftTests
//
//  Created by Ramill Ibragimov on 17.01.2024.
//

import XCTest
@testable import LeetCodeInSwift

final class MajorityElementTest: XCTestCase {

    let me = MajorityElement()

    func testExample1() throws {
     
        XCTAssertEqual(me.majorityElement([3, 2, 3]), 3)
    }

    func testExample2() throws {
     
        XCTAssertEqual(me.majorityElement([2, 2, 1, 1, 1, 2, 2]), 2)
    }
    
    func testExample3() throws {
     
        XCTAssertEqual(me.majorityElement([3, 1, 2, 3, 4, 3, 3]), 3)
    }
    
    func testExample4() throws {
     
        XCTAssertEqual(me.majorityElement([4]), 4)
    }

}
