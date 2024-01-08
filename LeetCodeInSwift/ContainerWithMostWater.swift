//
//  ContainerWithMostWater.swift
//  LeetCodeInSwift
//
//  Created by Ramill Ibragimov on 08.01.2024.
//

import Foundation

class ContainerWithMostWater {
    
    /*
     Given n non-negative integers where each integer represent the height of a vertical line on a chart.
     Find two lines, which together with x-axis forms a container, that holds the biggest amount of water.
     Return the area of that water.
     */
    func maxArea(_ height: [Int]) -> Int {
        var maxarea = 0
        var l = 0
        var r = height.count-1
        
        while(l<r) {
            maxarea = max(maxarea, min(height[l], height[r]) * (r - l))
            if (height[l] < height[r]) {
                l += 1
            } else {
                r -= 1
            }
        }
        return maxarea
    }
}
