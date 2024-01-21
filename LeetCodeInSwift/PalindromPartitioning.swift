//
//  PalindromPartitioning.swift
//  LeetCodeInSwift
//
//  Created by test on 21.01.2024.
//

import Foundation

class PalindromPartitioning {
    
    func isPalindrome(_ s: String) -> Bool {
        var l = 0
        var r = s.count - 1
        
        while l < r {
            let leftChar = s[s.index(s.startIndex, offsetBy: l)]
            let rightChar = s[s.index(s.startIndex, offsetBy: r)]
            
            if leftChar != rightChar {
                return false
            }
            
            l += 1
            r -= 1
        }
        
        return true
    }
    
    func builder(_ s: String, _ curArr: inout [String], _ ans: inout [[String]]) {
        if s.isEmpty {
            ans.append(curArr)
        }
        
        for i in 1...s.count {
            let curString = String(s.prefix(i))
            
            if isPalindrome(curString) {
                curArr.append(curString)
                builder(String(s.suffix(s.count - i)), &curArr, &ans)
                curArr.removeLast()
            }
        }
    }
    
    func partition(_ s: String) -> [[String]] {
        var ans = [[String]]()
        var curArr = [String]()
        builder(s, &curArr, &ans)
        return ans
    }
}
