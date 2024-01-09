//
//  ValidMountainArrayTest.swift
//  LeetCodeInSwiftTests
//
//  Created by Ramill Ibragimov on 09.01.2024.
//

import XCTest
@testable import LeetCodeInSwift

final class ValidMountainArrayTest: XCTestCase {
    
    let vma = ValidMountainArray()

    func testExample1() throws {
        
        XCTAssertEqual(vma.validMointainArray([0, 2, 3, 4, 5, 2, 1]), true)
    }
    
    func testExample2() throws {
        
        XCTAssertEqual(vma.validMointainArray([3, 5, 5]), false)
    }
    
    func testExample3() throws {
        
        XCTAssertEqual(vma.validMointainArray([0, 3, 2, 1]), true)
    }
    
    func testExample4() throws {
        
        XCTAssertEqual(vma.validMointainArray([0, 1]), false)
    }
    
    func testExample5() throws {
        
        XCTAssertEqual(vma.validMointainArray([9]), false)
    }
    
    func testExample6() throws {
        
        XCTAssertEqual(vma.validMointainArray([0, 1, 2]), false)
    }
}
