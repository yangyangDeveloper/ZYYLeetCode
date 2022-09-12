//
//  Solution_19.swift
//  Interview-hot100
//
//  Created by zhangyangyang on 2022/5/6.
//

import Foundation

class Solution_19 {
    // 1 获取长度
    // 2 移动指针定位到n   有可能是头  所以需要一个 dumynode
    // 3 找到 n-1 的node
    
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        if head == nil {
            return head
        }
        
        var count = 0
        var cur = head
        while cur != nil {
            count += 1
            cur = cur?.next
        }
    
        var pre = head
    
        if n == count {
            return head?.next
        } else {
            
            let c = count - n - 1
            for _ in 0..<c {
                pre = pre?.next
            }
            pre?.next = pre?.next?.next
        }
       return head
    }
}
