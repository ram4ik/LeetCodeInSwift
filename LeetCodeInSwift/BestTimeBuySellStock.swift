//
//  BestTimeBuySellStock.swift
//  LeetCodeInSwift
//
//  Created by test on 22.01.2024.
//

import Foundation

class BestTimeBuySellStock {
    
    func maxProfit(_ prices: [Int]) -> Int {
        var buyPrice = Int.max
        var profit = 0
        
        for price in prices {
            if price < buyPrice {
                buyPrice = price
            } else {
                profit = max(profit, price - buyPrice)
            }
        }
        
        return profit
    }
}
