//
//  ContainsDupliate.swift
//  LeetCodeInSwift
//
//  Created by Ramill Ibragimov on 13.01.2024.
//

import Foundation

class ContainsDupliate {
    
    func containDuplicate(_ nums: [Int]) -> Bool {
        var m = [Int: Bool]()
        
        for i in 0..<nums.count {
            if let _ = m[nums[i]] {
                return true
            }
            m[nums[i]] = true
        }
        return false
    }
}
