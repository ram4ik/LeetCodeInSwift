//
//  OddEvenList.swift
//  LeetCodeInSwift
//
//  Created by test on 20.01.2024.
//

import Foundation

class OddEvenList {
    
    func oddEvenList(_ head: ListNode?) -> ListNode? {
        
        guard let head = head else {
            return nil
        }
        
        var temp: ListNode? = head
        var odd: ListNode? = temp
        var even: ListNode? = odd?.next
        var eventList: ListNode? = even
        
        while even != nil && even?.next != nil {
            odd?.next = even?.next
            odd = odd?.next
            
            even?.next = odd?.next
            even = even?.next
        }
        
        odd?.next = eventList
        
        return temp
    }
}
