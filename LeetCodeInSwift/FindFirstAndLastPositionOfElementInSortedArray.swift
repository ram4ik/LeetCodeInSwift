//
//  FindFirstAndLastPositionOfElementInSortedArray.swift
//  LeetCodeInSwift
//
//  Created by Ramill Ibragimov on 17.01.2024.
//

import Foundation

class FindFirstAndLastPositionOfElementInSortedArray {
    
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        
        func findLast(_ nums: [Int], _ target: Int) -> Int {
            var left = 0
            var right = nums.count - 1
            
            while right >= left {
                let mid = (right + left) / 2
                if nums[mid] == target {
                    if mid + 1 > nums.count || nums[mid + 1] != target {
                        return mid
                    }
                    left = mid + 1
                } else if nums[mid] > target {
                    right = mid - 1
                } else {
                    left = mid + 1
                }
            }
            
            return -1
        }
        
        func findFirst(_ nums: [Int], _ target: Int) -> Int {
            var left = 0
            var right = nums.count - 1
            
            while right >= left {
                let mid = (right + left) / 2
                if nums[mid] == target {
                    if mid - 1 < 0 || nums[mid - 1] != target {
                        return mid
                    }
                    right = mid - 1
                } else if nums[mid] > target {
                    right = mid - 1
                } else {
                    left = mid + 1
                }
            }
            
            return -1
        }
        
        let first = findFirst(nums, target)
        let last = findLast(nums, target)
        
        return [first, last]
    }
}
