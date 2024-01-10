//
//  CountPrimesTest.swift
//  LeetCodeInSwiftTests
//
//  Created by Ramill Ibragimov on 10.01.2024.
//

import XCTest
@testable import LeetCodeInSwift

final class CountPrimesTest: XCTestCase {

    let cp = CountPrimes()

    func testExample1() throws {
       
        XCTAssertEqual(cp.countPrimes(10), 4)
    }
    
    func testExample2() throws {
       
        XCTAssertEqual(cp.countPrimes(0), 0)
    }
    
    func testExample3() throws {
       
        XCTAssertEqual(cp.countPrimes(1), 0)
    }
    
    func testExample4() throws {
       
        XCTAssertEqual(cp.countPrimes(2), 0)
    }
    
    func testExample5() throws {
       
        XCTAssertEqual(cp.countPrimes(5), 2)
    }

}
