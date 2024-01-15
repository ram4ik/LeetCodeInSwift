//
//  LongestSubstringWithoutRepeatingCharacters.swift
//  LeetCodeInSwift
//
//  Created by Ramill Ibragimov on 15.01.2024.
//

import Foundation

class LongestSubstringWithoutRepeatingCharacters {
    
    func leghtOfLongestSubstring(_ s: String) -> Int {
        var m = [Character: Int]()
        
        var ans = 0
        var left = 0
        var right = 0
        
        for i in 0..<s.count {
            let index = s.index(s.startIndex, offsetBy: i)
            let char = s[index]
            if let val = m[char] {
                left = max(left, val + 1)
            }
            right += 1
            m[char] = i
            ans = max(right - left, ans)
        }
        
        return ans
    }
}
