//
//  ReversedLinkedList.swift
//  LeetCodeInSwift
//
//  Created by test on 20.01.2024.
//

import Foundation

class ReversedLinkedList {
    
    func reverseList(_ head: ListNode?) -> ListNode? {
        
        var prev: ListNode? = nil
        var current = head
        
        while current != nil {
            let nextNode = current?.next
            current?.next = prev
            current = nextNode
        }
        
        return prev
    }
}
