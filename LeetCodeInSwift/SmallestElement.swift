//
//  SmallestElement.swift
//  LeetCodeInSwift
//
//  Created by test on 22.01.2024.
//

import Foundation

class SmallestElement {
    
    var res: Int?
    var k: Int?
    
    func solution(_ root: TreeNode?) {
        guard let root = root else { return }
        
        solution(root.left)
        
        k! -= 1
        if k! == 0 {
            res = root.val
        }
        
        solution(root.right)
    }
    
    func kthSmallest(_ root: TreeNode?, _ k: Int) -> Int {
        self.k = k
        solution(root)
        return res!
    }
}
