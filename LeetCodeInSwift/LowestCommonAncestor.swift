//
//  LowestCommonAncestor.swift
//  LeetCodeInSwift
//
//  Created by test on 22.01.2024.
//

import Foundation

class LowestCommonAncestor {
    
    func lowerCommonAncestor(_ node: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        
        if node == nil {
            return nil
        }
        
        if node === p || node === q {
            return node
        }
        
        let left = lowerCommonAncestor(node?.left, p, q)
        let right = lowerCommonAncestor(node?.right, p, q)
        
        if left != nil && right != nil {
            return node
        }
        
        if left != nil {
            return left
        }
        
        return right
    }
}
