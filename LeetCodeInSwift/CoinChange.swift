//
//  CoinChange.swift
//  LeetCodeInSwift
//
//  Created by test on 22.01.2024.
//

import Foundation

class CoinChange {
    
    func coinChange(_ coins: [Int], _ amount: Int) -> Int {
        if amount <= 0 {
            return 0
        }
        
        var dp = Array(repeating: Int.max, count: amount + 1)
        dp[0] = 0
        
        for i in 1...amount {
            for coin in coins {
                if coin <= i && dp[i - coin] != Int.max {
                    dp[i] = min(dp[i - coin] + 1, dp[i])
                }
            }
        }
        
        return dp[amount] != Int.max ? dp[amount] : -1
    }
}
