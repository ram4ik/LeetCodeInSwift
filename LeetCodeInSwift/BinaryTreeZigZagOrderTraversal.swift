//
//  BinaryTreeZigZagOrderTraversal.swift
//  LeetCodeInSwift
//
//  Created by test on 22.01.2024.
//

import Foundation

class BinaryTreeZigZagOrderTraversal {
    
    func zigzagLevelOrder(_ root: TreeNode?) -> [[Int]] {
        guard root != nil else {
            return []
        }
        
        var ans: [[Int]] = []
        var queue: [TreeNode] = []
        var levelIndex = 1
        
        while !queue.isEmpty {
            var level: [Int] = []
            let qLen = queue.count
            
            for _ in 0..<qLen {
                let current = queue.removeFirst()
                level.append(current.val)
                
                if let leftChild = current.left {
                    queue.append(leftChild)
                }
                
                if let rightChild = current.right {
                    queue.append(rightChild)
                }
            }
            
            if levelIndex % 2 == 0 {
                level.reverse()
            }
            
            ans.append(level)
            levelIndex += 1
        }
        
        return ans
    }
}
