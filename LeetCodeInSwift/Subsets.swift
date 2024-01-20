//
//  Subsets.swift
//  LeetCodeInSwift
//
//  Created by test on 20.01.2024.
//

import Foundation

class Subsets {
    
    func appendAndRemove(_ nums: [Int], _ ans: inout [[Int]], _ cur: inout [Int], _ index: Int) {
        
        if index > nums.count {
            return
        }
        
        ans.append(cur)
        
        for i in index..<nums.count {
            if !cur.contains(nums[i]) {
                cur.append(nums[i])
                appendAndRemove(nums, &ans, &cur, i)
                cur.removeLast()
            }
        }
    }
    
    func subsets(_ nums: [Int]) -> [[Int]] {
        var ans = [[Int]]()
        var cur = [Int]()
        
        appendAndRemove(nums, &ans, &cur, 0)
        
        return ans
    }
}
