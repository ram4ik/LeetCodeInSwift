//
//  LongestSubstringWithoutRepeatingCharactersTest.swift
//  LeetCodeInSwiftTests
//
//  Created by Ramill Ibragimov on 15.01.2024.
//

import XCTest
@testable import LeetCodeInSwift

final class LongestSubstringWithoutRepeatingCharactersTest: XCTestCase {

    let lswrc = LongestSubstringWithoutRepeatingCharacters()

    func testExample1() throws {
        
        XCTAssertEqual(lswrc.leghtOfLongestSubstring("abcabcbb"), 3)
    }

    func testExample3() throws {
        
        XCTAssertEqual(lswrc.leghtOfLongestSubstring("bbbbb"), 1)
    }
}
