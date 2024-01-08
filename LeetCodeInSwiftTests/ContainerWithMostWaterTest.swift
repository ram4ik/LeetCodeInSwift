//
//  ContainerWithMostWaterTest.swift
//  LeetCodeInSwiftTests
//
//  Created by Ramill Ibragimov on 08.01.2024.
//

import XCTest
@testable import LeetCodeInSwift

final class ContainerWithMostWaterTest: XCTestCase {
    
    let cwmw = ContainerWithMostWater()
    
    func testExample1() throws {
        
        XCTAssertEqual(cwmw.maxArea([12, 2, 3, 4, 5, 10]), 50)
    }
    
    func testExample2() throws {
        
        XCTAssertEqual(cwmw.maxArea([1, 2, 6, 2, 5, 4, 8,  3, 7]), 36)
    }
    
    func testExample3() throws {
        
        XCTAssertEqual(cwmw.maxArea([5, 3, 2, 1, 4]), 16)
    }
    
    func testExample4() throws {
        
        XCTAssertEqual(cwmw.maxArea([5, 9, 2, 1, 4]), 16)
    }
    
    func testExample5() throws {
        
        XCTAssertEqual(cwmw.maxArea([5, 9, 2, 4]), 12)
    }
    
    func testExample6() throws {
        
        XCTAssertEqual(cwmw.maxArea([5, 9, 2, 4, 3, 7]), 28)
    }

    func testExample7() throws {
        
        XCTAssertEqual(cwmw.maxArea([1, 8, 6, 2, 5, 7]), 28)
    }
}
