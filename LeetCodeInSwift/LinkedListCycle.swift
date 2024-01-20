//
//  LinkedListCycle.swift
//  LeetCodeInSwift
//
//  Created by test on 20.01.2024.
//

import Foundation

class LinkedListCycle {
    
    func hasCycle(_ head: ListNode?) -> Bool {
        
        var tortoise = head
        var hare = head
        
        while hare != nil && hare?.next != nil {
            tortoise = tortoise?.next
            hare = hare?.next?.next
            
            if tortoise === hare {
                return true
            }
        }
        
        return false
    }
}
