//
//  HouseRobber.swift
//  LeetCodeInSwift
//
//  Created by test on 22.01.2024.
//

import Foundation

class HouseRobber {
    
    func rob(_ nums: [Int]) -> Int {
        let n = nums.count
        
        if (n == 1) {
            return nums[0]
        }
        
        var house1 = nums[0]
        var house2 = max(nums[0], nums[1])
        var ans = house2
        
        for i in 2..<n {
            ans = max(house2, nums[i]+house1)
            house1 = house2
            house2 = ans
        }
        
        return ans
    }
}
