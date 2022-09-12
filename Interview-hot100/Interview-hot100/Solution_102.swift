//
//  Solution_102.swift
//  Interview-hot100
//
//  Created by zhangyangyang on 2022/5/1.
//

class TreeNode {
   
    
    var val: Int
    var left:TreeNode?
    var right:TreeNode?
    init(_ val:Int) {
        self.val = val
    }
    
    struct Stack<T> {
        
        var items = [T]()
        
        mutating func push(_ item: T) {
            items.append(item)
        }
        
        mutating func pop() -> T? {
            return items.popLast()
        }
    }
    
    func preorderTraversal(_ root: TreeNode?) -> [Int] {
        var result = [Int]()
        var stack = Stack<TreeNode>()
        var curNoe = root
        while curNoe != nil || stack.items.count > 0 {
            while curNoe != nil {
                stack.push(curNoe!)
                result.append(curNoe!.val)
                curNoe = curNoe?.left
            }
            
            curNoe = stack.pop()
            curNoe = curNoe?.right
        }
        return result
    }
    
    // 左跟右
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        var result = [Int]()
        var stack = Stack<TreeNode>()
        var curNoe = root
        while curNoe != nil || stack.items.count > 0 {
            while curNoe != nil {
                stack.push(curNoe!)
                curNoe = curNoe?.left
            }
            // 最左下边
            curNoe = stack.pop()
            result.append(curNoe!.val)
            curNoe = curNoe?.right
        }
        return result
     }
    
    
    // 左右跟
    func postorderTraversal(_ root: TreeNode?) -> [Int] {
        var result = [Int]()
        var stack = Stack<TreeNode>()
        var curNoe = root
        var preNode:TreeNode?
        while curNoe != nil || stack.items.count > 0 {
            while curNoe != nil {
                stack.push(curNoe!)
                curNoe = curNoe?.left
            }
            
            curNoe = stack.pop()
            
            if curNoe?.right == nil || curNoe?.right === preNode {
                result.append(curNoe!.val)
                preNode = curNoe
                curNoe = nil
            }else {
                stack.push(curNoe!)
                curNoe = curNoe?.right
            }
        }
        return result
     }
    
    
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        guard root != nil else {
            return []
        }
        var result = [[Int]]()
        var arr = [TreeNode]()
        arr.append(root!)
        while !arr.isEmpty {
            let size = arr.count
            var level = [Int]()
            for _ in 0..<size {
                let node = arr.removeFirst()
                level.append(node.val)
                if let leftnode = node.left {
                    arr.append(leftnode)
                }
                if let rightnode = node.right {
                    arr.append(rightnode)
                }
            }
            result.append(level)
        }
        return result
    }
}

class Solution_102 {
    
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        guard root != nil else {
            return []
        }
        
        var res = [[Int]]()
        var arr = [TreeNode]()
        arr.append(root!)
        
        while arr.count > 0 {
            
            var level = [Int]()
            let size = arr.count
            // 这个size 每层都会变
            for _ in 0..<size {
                let node = arr.removeFirst()
                level.append(node.val)
                // 每层要的事情
                
                // 1、遍历arr  输出val
                // 2、把下一层的node 放到arr
                if let leftnode = node.left {
                    arr.append(leftnode)
                }
                
                if let rightnode = node.right {
                    arr.append(rightnode)
                }
            }
             
            res.append(level)
        }
        
        
        return res
    }
}
