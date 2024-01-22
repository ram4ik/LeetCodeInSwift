//
//  ValidParenthesis.swift
//  LeetCodeInSwift
//
//  Created by test on 22.01.2024.
//

import Foundation

class ValidParenthesis {
    
    func validMountainArray(_ A: [Int]) -> Bool {
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
