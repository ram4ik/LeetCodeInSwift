//
//  MoveZeroesTest.swift
//  LeetCodeInSwiftTests
//
//  Created by Ramill Ibragimov on 10.01.2024.
//

import XCTest
@testable import LeetCodeInSwift

final class MoveZeroesTest: XCTestCase {

    let mz = MoveZeroes()

    func testExample1() throws {
 
        var inputArray = [0, 1, 0, 3, 12]
        let expectedArray = [1, 3, 12, 0, 0]
        
        mz.moveZeroes(&inputArray)
        
        XCTAssertEqual(inputArray, expectedArray)
    }

    func testExample2() throws {
 
        var inputArray = [0, 0, 7, 0, 1, 0, 0, 3, 12]
        let expectedArray = [7, 1, 3, 12, 0, 0, 0, 0, 0]
        
        mz.moveZeroes(&inputArray)
        
        XCTAssertEqual(inputArray, expectedArray)
    }

    func testExample3() throws {
 
        var inputArray = [0, 0, 0]
        let expectedArray = [0, 0, 0]
        
        mz.moveZeroes(&inputArray)
        
        XCTAssertEqual(inputArray, expectedArray)
    }
}
