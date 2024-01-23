//
//  UniquePaths.swift
//  LeetCodeInSwift
//
//  Created by test on 23.01.2024.
//

import Foundation

class UniquePaths {
    
    func uniquePaths(_ m: Int, _ n: Int) -> Int {
        var dp = [[Int]](repeating: [Int](repeating: 0, count: n), count: m)
        
        for i in 0..<m {
            dp[i][0] = 1
        }
        
        for j in 0..<n {
            dp[0][j] = 1
        }
        
        for i in 1..<m {
            for j in 1..<n {
                dp[i][j] = dp[i - 1][j] + dp[i][j - 1]
            }
        }
        
        return dp[m - 1][n - 1]
    }
}
