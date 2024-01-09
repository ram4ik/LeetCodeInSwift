//
//  ValidMountainArray.swift
//  LeetCodeInSwift
//
//  Created by Ramill Ibragimov on 09.01.2024.
//

import Foundation

class ValidMountainArray {
    
    /*
     Find if there is an increasing subarray followed by a decreasing subarray
     */
    func validMointainArray(_ A: [Int]) -> Bool {
        var i = 1
        
        while i < A.count && A[i] > A[i-1] {
            i += 1
        }
        
        if i == 1 || i == A.count {
            return false
        }
        
        while i < A.count && A[i] < A[i-1] {
            i += 1
        }
        return i == A.count
    }
}
