//
//  GroupAnagramsTests.swift
//  LeetCodeInSwiftTests
//
//  Created by Ramill Ibragimov on 18.01.2024.
//

import XCTest
@testable import LeetCodeInSwift

final class GroupAnagramsTest: XCTestCase {

    let ga = GroupAnagrams()

    func testExample1() throws {
        
        let input = ["eat", "tea", "tan", "ate", "nat", "bat"]
        let expectedOutput = [
            ["eat", "tea", "ate"],
            ["tan", "nat"],
            ["bat"]
        ]

        let result = ga.groupAnagrams(input)

        XCTAssertEqual(result.count, expectedOutput.count)

        for group in expectedOutput {
            XCTAssertTrue(result.contains { $0 == group })
        }
    }

    func testExample2() throws {
        
        let strs = [""]
        let output = [[""]]
        XCTAssertEqual(ga.groupAnagrams(strs), output)
    }
    
    func testExample3() throws {
        
        let input: [String] = []
        let expectedOutput: [[String]] = []

        let result = ga.groupAnagrams(input)

        XCTAssertEqual(result, expectedOutput)
    }

}
