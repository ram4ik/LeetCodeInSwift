//
//  MissingNumber.swift
//  LeetCodeInSwift
//
//  Created by Ramill Ibragimov on 11.01.2024.
//

import Foundation

class MissingNumber {
    
    func missingNumber(_ nums: [Int]) -> Int {
        let currentSum = nums.reduce(0, +)
        let n = nums.count
        let intendedSum = n * (n + 1) / 2
        return intendedSum - currentSum
    }
}
