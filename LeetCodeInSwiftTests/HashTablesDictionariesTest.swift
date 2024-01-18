//
//  HashTablesDictionariesTest.swift
//  LeetCodeInSwiftTests
//
//  Created by Ramill Ibragimov on 18.01.2024.
//

import XCTest
@testable import LeetCodeInSwift

final class HashTablesDictionariesTest: XCTestCase {

    let htd = HashTablesDictionaries()

    func testExample1() throws {
        
        let nums1 = [1, 2]
        let nums2 = [-2, -1]
        let nums3 = [-1, 2]
        let nums4 = [0, 2]
        
        XCTAssertEqual(htd.fourSumCount(nums1, nums2, nums3, nums4), 2)
    }

}
