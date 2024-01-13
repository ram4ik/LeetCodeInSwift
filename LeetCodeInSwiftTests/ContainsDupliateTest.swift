//
//  ContainsDupliateTest.swift
//  LeetCodeInSwiftTests
//
//  Created by Ramill Ibragimov on 13.01.2024.
//

import XCTest
@testable import LeetCodeInSwift

final class ContainsDupliateTest: XCTestCase {

    let cd = ContainsDupliate()

    func testExample1() throws {
       
        XCTAssertEqual(cd.containDuplicate([1, 2, 3, 1]), true)
    }

    func testExample2() throws {
       
        XCTAssertEqual(cd.containDuplicate([1, 2, 3, 4]), false)
    }
    
    func testExample3() throws {
       
        XCTAssertEqual(cd.containDuplicate([1, 1, 1, 3, 3, 4, 3, 2, 4, 2]), true)
    }
}
