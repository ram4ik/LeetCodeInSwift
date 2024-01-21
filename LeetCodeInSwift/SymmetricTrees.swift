//
//  SymmetricTrees.swift
//  LeetCodeInSwift
//
//  Created by test on 21.01.2024.
//

import Foundation

class SymmetricTrees {
    
    private func isMirror(_ t1: TreeNode?, _ t2: TreeNode?) -> Bool {
        if t1 == nil && t2 == nil {
            return true
        }
        
        if t1 == nil || t2 == nil {
            return false
        }
        
        return t1!.val == t2!.val && isMirror(t1!.right, t2!.left) && isMirror(t1!.left, t2!.right)
    }
    
    func isSymmetric(_ root: TreeNode?) -> Bool {
        if root == nil {
            return true
        }
        
        return isMirror(root!.left, root!.right)
    }
}
