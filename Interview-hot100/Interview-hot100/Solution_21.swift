//
//  Solution_21.swift
//  Interview-hot100
//
//  Created by zhangyangyang on 2022/4/28.
//

class Solution_21 {
    
    func mergeTwoLists(_ l1:  ListNode?, _ l2:  ListNode?) -> ListNode? {
        
        guard l1 != nil && l2 != nil else {
            return l1 == nil ? l2 : l1
        }
     
        var dump = ListNode(-1)
        var per = dump
        var p1 = l1
        var p2 = l2
        
        while p1 != nil && p2 != nil {
            if p1!.val < p2!.val {
                per.next = p1
                per = per.next!
                p1 = p1?.next
            } else {
                per.next = p2
                per = per.next!
                p2 = p2?.next
            }
        }
        
        if p1 == nil {
            per.next = p2
        }
        
        if p2 == nil {
            per.next = p1
        }
        
        return dump.next
    }
}
