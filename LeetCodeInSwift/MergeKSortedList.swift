//
//  MergeKSortedList.swift
//  LeetCodeInSwift
//
//  Created by test on 20.01.2024.
//

import Foundation

class MergeKSortedList {
    
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let dummy = ListNode(0)
        var cur: ListNode? = dummy
        
        var l1 = l1
        var l2 = l2
        
        while let node1 = l1, let node2 = l2 {
            if node1.val < node2.val {
                cur?.next = node1
                l1 = node1.next
            } else {
                cur?.next = node2
                l2 = node2.next
            }
            cur = cur?.next
        }
        
        if l1 != nil {
            cur?.next = l1
        } else {
            cur?.next = l2
        }
        
        return dummy.next
    }
    
    func mergeKList(_ lists: [ListNode?]) -> ListNode? {
        if lists.isEmpty {
            return nil
        }
        
        var lists = lists
        var i = 0
        var j = lists.count - 1
        
        while j != 0 {
            i = 0
            
            while j > i {
                lists[i] = mergeTwoLists(lists[i], lists[j])
                i += 1
            }
        }
        
        return lists[0]
    }
}
