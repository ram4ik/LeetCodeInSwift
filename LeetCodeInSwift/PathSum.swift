//
//  PathSum.swift
//  LeetCodeInSwift
//
//  Created by Ramill Ibragimov on 14.01.2024.
//

import Foundation

class TreeNode {
    var val: Int
    var left: TreeNode?
    var right: TreeNode?
    
    init(_ val: Int) {
        self.val = val
    }
}

class PathSum {
    
    private func hasSum(_ root: TreeNode?, _ sum: Int, _ cur: inout Int) -> Bool {
        if let root = root {
            cur += root.val
            if cur == sum && root.left == nil && root.right == nil {
                return true
            }
            
            if let left = root.left, hasSum(left, sum, &cur) {
                return true
            }
            
            if let right = root.right, hasSum(right, sum, &cur) {
                return true
            }
            
            cur -= root.val
        }
        
        return false
    }
    
    func hasPathSum(_ root: TreeNode?, _ sum: Int) -> Bool {
        if let root = root {
            var cur = 0
            return hasSum(root, sum, &cur)
        }
        return false
    }
}
