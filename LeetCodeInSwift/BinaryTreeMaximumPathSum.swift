//
//  BinaryTreeMaximumPathSum.swift
//  LeetCodeInSwift
//
//  Created by test on 22.01.2024.
//

import Foundation

class BinaryTreeMaximumPathSum {
    
    private var ans = Int.min
    
    private func solution(_ node: TreeNode?) -> Int {
        guard let node = node else {
            return 0
        }
        
        let left = solution(node.left)
        let right = solution(node.right)
        
        let mxSide = max(node.val, node.val + max(left, right))
        let mxCurrent = max(mxSide, node.val + left + right)
        
        ans = max(ans, mxCurrent)
        
        return mxSide
    }
    
    func maxPathSum(_ root: TreeNode?) -> Int {
        _ = solution(root)
        return ans
    }
}
