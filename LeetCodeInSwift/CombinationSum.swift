//
//  CombinationSum.swift
//  LeetCodeInSwift
//
//  Created by test on 21.01.2024.
//

import Foundation

class CombinationSum {
    
    func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
        
        var ans = [[Int]]()
        var cur = [Int]()
        
        buildCombination(candidates, &ans, &cur, target, 0, 0)
        return ans
    }
    
    private func buildCombination(_ candidates: [Int], _ ans: inout [[Int]], _ cur: inout [Int], _ target: Int, _ index: Int, _ sum: Int) {
        
        if sum == target {
            ans.append(cur)
        } else if sum < target {
            let n = candidates.count
            for i in index..<n {
                cur.append(candidates[i])
                buildCombination(candidates, &ans, &cur, target, i, sum+candidates[i])
                cur.removeLast()
            }
        }
    }
}
