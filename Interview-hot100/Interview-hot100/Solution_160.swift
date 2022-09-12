//
//  Solution_160.swift
//  Interview-hot100
//
//  Created by zhangyangyang on 2022/4/29.
//

import Foundation

class Solution_160 {
    
    // 1、 找个2个连标的长度 和差
    // 2、 将长的偏移 链表差
    // 3、 移动 p1 和 p2 然后 比较 p1.next  == p2.next  return  p1.next
    func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
        
        if headA === headB {
            return headA
        }
        
        var p1 = headA
        var p2 = headB
        var l1 = 0
        var l2 = 0
        while p1 != nil {
            l1 += 1
            p1 = p1?.next
        }
        
        while p2 != nil {
            l2 += 1
            p2 = p2?.next
        }

        var res = l1 - l2
      
        
        p1 = headA
        p2 = headB
        
        // l1 长
        if res > 0 {
            while res > 0 {
                p1 = p1?.next
                res -= 1
            }
            
            while p2 != nil {
                if (p1 === p2) {
                    return p1
                }
                p1 = p1?.next
                p2 = p2?.next
            }
        } else  {
            // l2 长
            while res < 0 {
                p2 = p2?.next
                res += 1
            }
            
            while p1 != nil {
                if (p1 === p2) {
                    return p1
                }
                p1 = p1?.next
                p2 = p2?.next
            }
        } 
        
        return nil
    }
    
    // 方法二 双指针
    func getIntersectionNode2(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
        
        if headA == nil || headB == nil {
            return nil
        }
        
        var p1 = headA
        var p2 = headB
        
        
        while p1 !== p2 {
            p1 = p1 == nil ? headB : p1?.next
            p2 = p2 == nil ? headA : p2?.next
        }
        return p1
    }
}
