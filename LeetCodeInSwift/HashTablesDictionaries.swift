//
//  HashTablesDictionaries.swift
//  LeetCodeInSwift
//
//  Created by Ramill Ibragimov on 18.01.2024.
//

import Foundation

class HashTablesDictionaries {
    
    func fourSumCount(_ A: [Int], _ B: [Int], _ C: [Int], _ D: [Int]) -> Int {
        var m: [Int: Int] = [:]
        
        for a in A {
            for c in C {
                let target = a + c
                if m[target] == nil {
                    m[target] = 0
                }
                m[target]! += 1
            }
        }
        
        var ans = 0
        for b in B {
            for d in D {
                let target = -(b + d)
                if m[target] != nil {
                    ans += m[target]!
                }
            }
        }
        return ans
    }
}
