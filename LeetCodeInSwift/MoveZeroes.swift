//
//  MoveZeroes.swift
//  LeetCodeInSwift
//
//  Created by Ramill Ibragimov on 10.01.2024.
//

import Foundation

class MoveZeroes {
    
    func moveZeroes(_ nums: inout [Int]) {
        var zeroIndex = 0
        let n = nums.count
        
        for nonZeroIndex in 0..<n {
            if nums[nonZeroIndex] != 0 {
                nums[zeroIndex] = nums[nonZeroIndex]
                zeroIndex += 1
            }
        }
        
        for i in zeroIndex..<n {
            nums[i] = 0
        }
    }
}
