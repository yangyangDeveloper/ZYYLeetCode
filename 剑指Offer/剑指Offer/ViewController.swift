//
//  ViewController.swift
//  剑指Offer
//
//  Created by zhangyangyang on 2022/9/7.
//

import UIKit

class ListNode: Hashable {
    var val: Int
    var next: ListNode?
    init(_ val: Int) { self.val = val; self.next = nil }
    var hashValue: Int {
        return val.hashValue ^ next.hashValue
    }
    static func == (lhs: ListNode, rhs: ListNode) -> Bool {
        return lhs.val == rhs.val && lhs.next == rhs.next
    }
}

class TreeNode {
    var val: Int
    var left:TreeNode?
    var right:TreeNode?
    init(_ val:Int) {
        self.val = val
    }
}



class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

