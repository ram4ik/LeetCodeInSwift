//
//  TwoSumTest.swift
//  LeetCodeInSwiftTests
//
//  Created by Ramill Ibragimov on 13.01.2024.
//

import XCTest
@testable import LeetCodeInSwift

final class TwoSumTest: XCTestCase {

    let ts = TwoSum()

    func testExample1() throws {
    
        XCTAssertEqual(ts.twoSum([2, 7, 11, 15], 9), [0, 1])
    }
    
    func testExample2() throws {
    
        XCTAssertEqual(ts.twoSum([2, 7, 11, 15], 18), [1, 2])
    }

}
