//
//  MajorityElement.swift
//  LeetCodeInSwift
//
//  Created by Ramill Ibragimov on 17.01.2024.
//

import Foundation

class MajorityElement {
    
    func majorityElement(_ nums: [Int]) -> Int {
        var m = [Int: Int]()
        let n = nums.count
        
        for i in 0..<n {
            if let count = m[nums[i]] {
                m[nums[i]] = count + 1
            } else {
                m[nums[i]] = 1
            }
        }
        
        var majorityElement = 0
        for i in 0..<n {
            if m[nums[i]]! > n / 2 {
                majorityElement = nums[i]
            }
        }
        
        return majorityElement
    }
    
    func majorityElement2(_ nums: [Int]) -> Int {
        var count = 1
        var majority = nums[0]
        let n = nums.count
        
        for i in 1..<n {
            if majority == nums[i] {
                count += 1
            } else {
                count -= 1
                if count == 0 {
                    majority = nums[i]
                    count = 1
                }
            }
        }
        
        return majority
    }
}
