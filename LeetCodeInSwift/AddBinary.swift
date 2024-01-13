//
//  AddBinary.swift
//  LeetCodeInSwift
//
//  Created by Ramill Ibragimov on 13.01.2024.
//

import Foundation

class AddBinary {
    
    func addBinary(_ a: String, _ b: String) -> String {
        
        var i = a.count - 1
        var j = b.count - 1
        
        var carry = 0
        var result = ""
        
        while(i >= 0 || j >= 0 || carry == 1) {
            if (i >= 0) {
                carry += Int(String(a[a.index(a.startIndex, offsetBy: i)])) ?? 0
                i -= 1
            }
            if (j >= 0) {
                carry += Int(String(b[b.index(b.startIndex, offsetBy: j)])) ?? 0
                j -= 1
            }
            result = String(carry % 2) + result
            carry /= 2
        }
        return result
    }
}
