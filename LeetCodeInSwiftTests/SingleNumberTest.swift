//
//  SingleNumberTest.swift
//  LeetCodeInSwiftTests
//
//  Created by Ramill Ibragimov on 13.01.2024.
//

import XCTest
@testable import LeetCodeInSwift

final class SingleNumberTest: XCTestCase {

    let sn = SingleNumber()
    
    func testExample1() throws {
        
        XCTAssertEqual(sn.singleNumber([2, 2, 1]), 1)
    }
    
    func testExample2() throws {
        
        XCTAssertEqual(sn.singleNumber([2, 2, 1, 1]), -1)
    }
    
    func testExample3() throws {
        
        XCTAssertEqual(sn.singleNumber([4, 1, 2, 1, 2]), 4)
    }
    
    func testExample4() throws {
        
        XCTAssertEqual(sn.singleNumber([1, 1, 4]), 4)
    }
    
    func testExample5() throws {
        
        XCTAssertEqual(sn.singleNumber([1, 1, 2, 2, 5, 5, 9]), 9)
    }
    
    func testExample6() throws {
        
        XCTAssertEqual(sn.singleNumberWithXOR([2, 2, 1]), 1)
    }
        
    func testExample8() throws {
        
        XCTAssertEqual(sn.singleNumberWithXOR([4, 1, 2, 1, 2]), 4)
    }
    
    func testExample9() throws {
        
        XCTAssertEqual(sn.singleNumberWithXOR([1, 1, 4]), 4)
    }
    
    func testExample10() throws {
        
        XCTAssertEqual(sn.singleNumberWithXOR([1, 1, 2, 2, 5, 5, 9]), 9)
    }
}
