//
//  Solution_141.swift
//  Interview-hot100
//
//  Created by zhangyangyang on 2022/5/6.
//


class Solution_141 {
    func hasCycle(_ head: ListNode?) -> Bool {
        if head == nil || head?.next == nil {
            return false
        }
        
        var slow = head
        var fast = head
        
        while fast != nil {
            slow = slow?.next
            fast = fast?.next?.next
            
            if slow === fast {
                return true
            }
        }
        
        return false
     }
}
