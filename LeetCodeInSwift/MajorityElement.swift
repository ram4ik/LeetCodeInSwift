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
}
