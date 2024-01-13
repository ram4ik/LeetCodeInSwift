//
//  MergeTwoSortedLists.swift
//  LeetCodeInSwift
//
//  Created by Ramill Ibragimov on 13.01.2024.
//

import Foundation

class ListNode {
    var val: Int
    var next: ListNode?

    init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class MergeTwoSortedLists {
    
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        let dummy = ListNode(0)
        var cur: ListNode? = dummy
        
        var list1 = list1
        var list2 = list2
        
        while list1 != nil && list2 != nil {
            if list1!.val > list2!.val {
                cur?.next = list2
                list2 = list2?.next
            } else {
                cur?.next = list1
                list1 = list1?.next
            }
            cur = cur?.next
        }
        
        if list1 != nil {
            cur?.next = list1
        }
        
        if list2 != nil {
            cur?.next = list2
        }
        
        return dummy.next
    }
}
