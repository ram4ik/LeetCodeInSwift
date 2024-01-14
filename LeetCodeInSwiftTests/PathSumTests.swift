//
//  PathSumTests.swift
//  LeetCodeInSwiftTests
//
//  Created by Ramill Ibragimov on 14.01.2024.
//

import XCTest
@testable import LeetCodeInSwift

final class PathSumTests: XCTestCase {

    func testHasPathSum_PositiveCase() {
            // Create a binary tree
            let root = TreeNode(10)
            root.left = TreeNode(5)
            root.right = TreeNode(12)
            root.left?.left = TreeNode(3)
            root.left?.right = TreeNode(7)
            
            let pathSum = PathSum()
            
            // Test if there is a path with sum 22
            XCTAssertTrue(pathSum.hasPathSum(root, 22))
        }

        func testHasPathSum_NegativeCase() {
            // Create a binary tree
            let root = TreeNode(5)
            root.left = TreeNode(3)
            root.right = TreeNode(8)
            root.left?.left = TreeNode(2)
            root.left?.right = TreeNode(4)
            root.right?.left = TreeNode(6)
            root.right?.right = TreeNode(9)
            
            let pathSum = PathSum()
            
            // Test if there is a path with sum 15
            XCTAssertFalse(pathSum.hasPathSum(root, 15))
        }

}
