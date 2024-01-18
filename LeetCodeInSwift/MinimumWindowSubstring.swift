//
//  MinimumWindowSubstring.swift
//  LeetCodeInSwift
//
//  Created by test on 18.01.2024.
//

import Foundation

class MinimumWindowSubstring {
    
    func minWindow(_ s: String, _ t: String) -> String {
        let len1 = s.count
        let len2 = t.count
        
        if len1 < len2 {
            return ""
        }
        
        var hashPat = [Character: Int]()
        var hashStr = [Character: Int]()
        
        for c in t {
            hashPat[c, default: 0] += 1
        }
        
        var count = 0
        var left = 0
        var startIndex = -1
        var minLen = Int.max
        
        let sArray = Array(s)
        
        for right in 0..<len1 {
            let c = sArray[right]
            hashStr[c, default: 0] += 1
            
            if let patCount = hashPat[c], hashStr[c]! <= patCount {
                count += 1
            }
            
            if count == len2 {
                while hashPat[sArray[left]] == nil || hashStr[sArray[left]]! > hashPat[sArray[left]]! {
                    let leftChar = sArray[left]
                    if let leftCount = hashStr[leftChar], leftCount > (hashPat[leftChar] ?? 0) {
                        hashStr[leftChar]! -= 1
                    }
                    left += 1
                }
                
                let windoLen = right - left + 1
                if minLen > windoLen {
                    minLen = windoLen
                    startIndex = left
                }
            }
        }
        
        if startIndex == -1 {
            return ""
        }
        
        let start = s.index(s.startIndex, offsetBy: startIndex)
        let end = s.index(start, offsetBy: minLen)
        
        return String(s[start..<end])
    }
}
