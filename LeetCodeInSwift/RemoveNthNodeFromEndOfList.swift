//
//  RemoveNthNodeFromEndOfList.swift
//  LeetCodeInSwift
//
//  Created by test on 20.01.2024.
//

import Foundation

class RemoveNthNodeFromEndOfList {
    
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        let temp = ListNode(0)
        temp.next = head
        
        var slow: ListNode? = temp
        var fast: ListNode? = temp.next
        
        for _ in 0..<n {
            fast = fast?.next
        }
        
        while fast != nil {
            fast = fast?.next
            slow = slow?.next
        }
        
        slow?.next = slow?.next?.next
        
        return temp.next
    }
}
