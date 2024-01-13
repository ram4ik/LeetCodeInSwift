//
//  SingleNumber.swift
//  LeetCodeInSwift
//
//  Created by Ramill Ibragimov on 13.01.2024.
//

import Foundation

class SingleNumber {
    
    func singleNumber(_ nums: [Int]) -> Int {
        var m = [Int: Int]()
        for i in 0..<nums.count {
            let num = nums[i]
            if let count = m[num] {
                m[num] = count + 1
            } else {
                m[num] = 1
            }
        }
        for i in 0..<nums.count {
            let num = nums[i]
            if m[num] == 1 {
                return num
            }
        }
        return -1
    }
    
    func singleNumberWithXOR(_ nums: [Int]) -> Int {
        var ans = 0
        for num in nums {
            ans ^= num
        }
        return ans
    }
}
