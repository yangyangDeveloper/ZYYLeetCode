//
//  ViewController.swift
//  Interview-hot100
//
//  Created by zhangyangyang on 2022/4/22.
//

import UIKit

extension ListNode: Hashable {
    static func == (lhs: ListNode, rhs: ListNode) -> Bool {
        return  lhs.val == rhs.val && lhs.next == lhs.next
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(val)
        hasher.combine(next)
    }
}

class ListNode {
    var val: Int
    var next: ListNode?
    init() { self.val = 0; self.next = nil }
    init(_ val: Int) { self.val = val; self.next = nil }
    init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next}
    
    func forEashItem(head: ListNode?) {
        var cur = head
        while cur != nil {
            if let v = cur?.val {
                //print(v)
                print("\(v)->", terminator: "")
            }
            cur = cur?.next
        }
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //test206()
        //test3()
        //test70()
        //test448()
        //test461()
        //test215()
        //test15()
        //test53()
        //test21()
        //test1()
        //test160()
        //test121()
        //test912()
        test82()
    }
    
    func test206() {
        let node1 = ListNode(1)
        let node2 = ListNode(2)
        let node3 = ListNode(3)
        let node4 = ListNode(-5)
        
        node1.next = node2
        node2.next = node3
        node3.next = node4
        node4.next = nil
        node1.forEashItem(head: node1)
        print("------")
        
        let node = Solution_206().reverseList(node1)
        // 验证结果
        node1.forEashItem(head: node)
    }
    
    func test3(){
        let s =  "abcabcbb123456"
        let t = Solution_3().lengthOfLongestSubstring(s)
    }
    
    func test70() {
        let t =  Solution_70().climbStairs(3)
    }
    
    func test448() {
        let nums = [4,3,2,7,8,2,3,1]
        let t = Solution_448().findDisappearedNumbers(nums)
    }
    
    func test461() {
        let x = 1, y = 4
        let t = Solution_461().hammingDistance2(x, y)
        
    }
    
    func test215() {
        //let arr = [3,2,1,5,6,4]
        let arr = [3,2,3,1,2,4,5,5,6]
        let k = 4
        let t = Solution_215().findKthLargest(arr, k)
        
    }
    
    func test15() {
        let arr = [-1,0,1,2,-1,-4]
        let t = Solution_15().threeSum(arr)
        
    }
    
    func test53() {
        let nums =  [-2,1,-3,4,-1,2,1,-5,4]
        let t = Solution_53().maxSubArray(nums)
        
    }
    
    func test21() {
        let l1 = ListNode(1)
        let node2 = ListNode(2)
        let node3 = ListNode(4)
        l1.next = node2
        node2.next = node3
        node3.next = nil
        
        let l2 = ListNode(1)
        let node4 = ListNode(3)
        let node5 = ListNode(4)
        l2.next = node4
        node4.next = node5
        node5.next = nil
        
        let t = Solution_21().mergeTwoLists(l1, l2)
        
    }
    
    func test1() {
        let nums = [2,7,11,15]
        let target = 9
        let t = Solution_1().twoSum(nums, target)
        
    }
    
    func test160() {
       
        let node1 = ListNode(3)
        let node2 = ListNode(2)
        let node3 = ListNode(3)
       
        
        
      
        node2.next = node3

        let t = Solution_160().getIntersectionNode(node3, node2)
        
    }
    
    func test121() {
        let nums = [7,1,5,3,6,4]
        let t = Solution_121().maxProfit(nums)
        
    }
    
    func test912() {
       let nums = [5,2,3,1]
       let t = Solution_912().sortArray(nums)
        
    }
    
    func test82() {
        let node1 = ListNode(1)
        let node2 = ListNode(1)
        let node3 = ListNode(1)
        let node4 = ListNode(2)
        let node5 = ListNode(3)
        node1.next = node2
        node2.next = node3
        node3.next = node4
        node4.next = node5
        node5.next = nil
        
        let t = Solution_82().deleteDuplicates2(node1)
        
        print(t)
    }
}


