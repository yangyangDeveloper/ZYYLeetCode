//
//  Solution_82.swift
//  Interview-hot100
//
//  Created by zhangyangyang on 2022/5/16.
//

class Solution_82 {
    // 走出3 走出4
    // while == 3 一直next
    
    //变量prev指向虚拟头结点dummyHead，用以将删除重复结点之后剩余的链表部分连接起来。
    //变量cur 表示当前考察的结点。
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        if head == nil { return head }
        
        var dumnyhead:ListNode = ListNode(-1)
        dumnyhead.next = head
        
        var prev = dumnyhead
        var cur = prev.next
        
        
        while cur != nil  {
            
            var curRepeatNum = 0
            var difNode = cur
            
            while difNode != nil && difNode?.val == cur?.val {
                curRepeatNum += 1
                difNode = difNode?.next
            }
            
            if curRepeatNum > 1 {
                prev.next = difNode
            } else {
                prev = cur!
            }
            cur = difNode
        }
        
        return dumnyhead.next
    }
    
    
    func deleteDuplicates2(_ head: ListNode?) -> ListNode? {
         
         var dump: ListNode? = ListNode(-1)
         dump?.next = head
         
         var cur = dump
         
         while cur?.next != nil {
             
             var next = cur?.next
             
             if next?.next?.val != next?.val || next?.next == nil {
                 cur = cur?.next
             } else {
                 while next?.next != nil && next?.next?.val == next?.val {
                     print(cur?.val)
                     print(next?.val)
                     print(next?.next?.val)
                     print(next?.next?.next?.val)
                     print("----")
                     next?.next = next?.next?.next
                    
                 }
                 cur?.next = next?.next
             }
         }
         
         return dump?.next
     }
    
    
}
