//
//  TwoSum.swift
//  LeetCodeInSwift
//
//  Created by Ramill Ibragimov on 13.01.2024.
//

import Foundation

class TwoSum {
    
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var map = [Int: Int]()
        
        for i in 0..<nums.count {
            let num = nums[i]
            let remainder = target - num
            
            if let index = map[remainder] {
                return [index, i]
            }
            
            map[num] = i
        }
        
        return []
    }
}
