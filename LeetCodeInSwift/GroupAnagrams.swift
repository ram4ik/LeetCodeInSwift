//
//  GroupAnagrams.swift
//  LeetCodeInSwift
//
//  Created by Ramill Ibragimov on 18.01.2024.
//

import Foundation

class GroupAnagrams {
    
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var map: [String: [String]] = [:]
        
        for s in strs {
            let array = Array(s)
            let sorted_s = String(array.sorted())
            
            if map[sorted_s] == nil {
                map[sorted_s] = []
            }
            
            map[sorted_s]?.append(s)
        }
        
        return Array(map.values)
    }
}
