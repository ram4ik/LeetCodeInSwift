//
//  MaximumDepthBinaryTree.swift
//  LeetCodeInSwift
//
//  Created by test on 21.01.2024.
//

import Foundation

class MaximumDepthBinaryTree {
    
    func maxDepth(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        
        let left = 1 + maxDepth(root?.left)
        let right = 1 + maxDepth(root?.right)
        let ans = max(left, right)
        return ans
    }
}
