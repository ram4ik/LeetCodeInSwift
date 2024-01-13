//
//  AddBinaryTest.swift
//  LeetCodeInSwiftTests
//
//  Created by Ramill Ibragimov on 13.01.2024.
//

import XCTest
@testable import LeetCodeInSwift

final class AddBinaryTest: XCTestCase {

    let ab = AddBinary()

    func testExample1() throws {
       
        XCTAssertEqual(ab.addBinary("1010", "1011"), "10101")
    }

    func testExample2() throws {
       
        XCTAssertEqual(ab.addBinary("11", "1"), "100")
    }

}
