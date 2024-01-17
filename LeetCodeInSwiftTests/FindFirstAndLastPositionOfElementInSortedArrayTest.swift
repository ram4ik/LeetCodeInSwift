//
//  FindFirstAndLastPositionOfElementInSortedArrayTest.swift
//  LeetCodeInSwiftTests
//
//  Created by Ramill Ibragimov on 17.01.2024.
//

import XCTest
@testable import LeetCodeInSwift

final class FindFirstAndLastPositionOfElementInSortedArrayTest: XCTestCase {

    let ffalpoeisa = FindFirstAndLastPositionOfElementInSortedArray()

    func testExample1() throws {
        
        XCTAssertEqual(ffalpoeisa.searchRange([5, 7, 7, 8, 8, 10], 8), [3, 4])
    }

    func testExample2() throws {
        
        XCTAssertEqual(ffalpoeisa.searchRange([5, 7, 7, 8, 8, 10], 7), [1, 2])
    }
}
