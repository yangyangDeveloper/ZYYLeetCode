//
//  Solution_142.swift
//  Interview-hot100
//
//  Created by zhangyangyang on 2022/5/5.
//

// 1、 记录之前的节点    索引和node  map   2 ox100  2 ox200
// 2、 比如node
// 3、 返回node
//
//class ListNode: Hashable {
//    int val;
//    ListNode next;
//    ListNode(int x) {
//        val = x;
//        next = null;
//    }
//    var hashValue: Int {
//        return val.hashValue
//    }
//}


/*
 
 java 题解
 public ListNode detectCycle(ListNode head) {
     Set<ListNode> set = new HashSet<>();
     ListNode node = head;
     while (node != null) {
         if (set.contains(node)) return node;
         set.add(node);
         node = node.next;
     }
     return null;
 }
 
 */


class Solution_142 {

    func detectCycle(_ head: ListNode?) -> ListNode? {
        
        guard head != nil else {
            return nil
        }
        
        var array = [ListNode]()

        var head = head
        while head != nil {
            if array.contains(head!) {
                return head
            }else {
                array.append(head!)
            }
            head = head?.next
        }
       
        return nil
    }
    
    func detectCycle2(_ head: ListNode?) -> ListNode? {
        var head = head
        var nodeSeen : [Int:ListNode?] = [:]
        while head != nil {
            if nodeSeen[(head?.val)!] != nil {
                return head
            }else{
                nodeSeen[(head?.val)!] = head
            }
            head = head?.next
        }
        return nil
    }
    
}
