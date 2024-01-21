//
//  LinkedListAddTwoNumbers.swift
//  LeetCodeInSwift
//
//  Created by test on 20.01.2024.
//

import Foundation

class LinkedListAddTwoNumbers {
    
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
        let ans = ListNode(0)
        var pointer = ans
        var carry = 0
        var sum = 0
        
        var _l1 = l1
        var _l2 = l2
        
        while _l1 != nil || _l2 != nil {
            sum = carry
            
            if let value = _l1?.val {
                sum += value
                _l1 = _l1?.next
            }
            
            if let value = _l2?.val {
                sum += value
                _l2 = _l2?.next
            }
            
            carry = sum / 10
            pointer.next = ListNode(sum % 10)
            pointer = pointer.next!
        }
        
        if carry > 0 {
            pointer.next = ListNode(carry)
        }
        
        return ans.next
    }
}
