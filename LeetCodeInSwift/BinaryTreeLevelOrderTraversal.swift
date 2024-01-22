//
//  BinaryTreeLevelOrderTraversal.swift
//  LeetCodeInSwift
//
//  Created by test on 22.01.2024.
//

import Foundation

class BinaryTreeLevelOrderTraversal {
    
    func postorderTraversal(_ root: TreeNode?) -> [Int] {
        var ans = [Int]()
        guard let root = root else {
            return ans
        }
        
        var s1 = [TreeNode]()
        var s2 = [TreeNode]()
        s1.append(root)
        
        while !s1.isEmpty {
            let x = s1.removeLast()
            s2.append(x)
            
            if let left = x.left {
                s1.append(left)
            }
            
            if let right = x.right {
                s1.append(right)
            }
        }
        
        while !s2.isEmpty {
            let y = s2.removeLast()
            ans.append(y.val)
        }
        
        return ans
    }
}
