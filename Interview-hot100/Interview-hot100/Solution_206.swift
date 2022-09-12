//
//  Solution_206.swift
//  Interview-hot100
//
//  Created by zhangyangyang on 2022/4/22.
//

class Solution_206 {
    
    // 方法一
    func reverseList(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil {
            return head
        }
        var per:ListNode? = nil
        var mid:ListNode? = head
        var next:ListNode? = mid?.next
        
        // break 立即中断循环
        // continue 立即结束本次循环
        while 1 > 0 {
            mid?.next = per
            if next == nil {
                break
            }
            per = mid
            mid = next
            next = next?.next
        }
        
        return mid
    }
    
    // 方法二
    func reverseList2(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil {
            return head
        }
        
        var newHead:ListNode?
        var temp:ListNode?
        var cur = head

        while cur != nil  {
            temp = cur
            cur = cur?.next
            temp?.next = newHead
            newHead = temp
        }
        
        return newHead
    }
}


