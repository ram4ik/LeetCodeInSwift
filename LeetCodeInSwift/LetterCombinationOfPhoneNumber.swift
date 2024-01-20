//
//  LetterCombinationOfPhoneNumber.swift
//  LeetCodeInSwift
//
//  Created by test on 20.01.2024.
//

import Foundation

class LetterCombinationOfPhoneNumber {
    
    func solution(_ digits: String, _ digitToString: [Character: String], _ cur: String, _ ans: inout [String], _ digitIndex: Int) {
        
        if cur.count == digits.count {
            ans.append(cur)
            return
        }
        
        let currentDigit = digits[digits.index(digits.startIndex, offsetBy: digitIndex)]
        guard let currentString = digitToString[currentDigit] else {
            return
        }
        
        for char in currentString {
            solution(digits, digitToString, cur + String(char), &ans, digitIndex + 1)
        }
    }
    
    func letterCombinations(_ digits: String) -> [String] {
        
        if digits.isEmpty {
            return []
        }
        
        let digitToString: [Character: String] = [
            "2": "abc",
            "3": "def",
            "4": "ghi",
            "5": "jkl",
            "6": "mno",
            "7": "prqs",
            "8": "tuv",
            "9": "wxyz",
        ]
        
        var ans: [String] = []
        solution(digits, digitToString, "", &ans, 0)
        return ans
    }
}
