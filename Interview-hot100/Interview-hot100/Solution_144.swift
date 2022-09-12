//
//  Solution_144.swift
//  Interview-hot100
//
//  Created by zhangyangyang on 2022/5/7.
//


// 二叉树前序遍历

/*
 递归法
 确定递归函数的参数和返回值：
 确定终止条件：
 确定单层递归的逻辑：
 
 跌代法
 1、需要先将 root 节点进行入栈，然后再执行 while 循环
 2、当栈不为空时，栈顶元素出栈，如果其右孩子不为空，则右孩子入栈，其左孩子不为空，则左孩子入栈
  空节点不入栈
*/


class Solution_144 {
    
    func preorderTraversal(_ root: TreeNode?) -> [Int] {
        guard root != nil else {return []}
        var res = [Int]()
        dfs(root, &res)
        return res
    }
    
    func dfs(_ root: TreeNode?, _ res: inout [Int]) {
        guard root != nil else { return }
        res.append(root!.val)
        dfs(root?.left, &res)
        dfs(root?.right, &res)
    }
    
    // 迭代写法
    func preorderTraversal2(_ root: TreeNode?) -> [Int] {
        guard root != nil else { return [] }
        var stack = [TreeNode]()
        var res = [Int]()
        stack.append(root!)
        while stack.count > 0 {
            
            // 先进后出  利用 stack
            var temp = stack.removeLast()
            
            res.append(temp.val)
            
            if let rightnode = temp.right {
                stack.append(rightnode)
            }
            
            if let leftnode = temp.left {
                stack.append(leftnode)
            }
        }
        return res
    }
}

// 中序遍历
class Solution_94 {
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        guard root != nil else {return []}
        var res = [Int]()
        dfs(root, &res)
        return res
    }
    
    func dfs(_ root: TreeNode?, _ res: inout [Int]) {
        guard root != nil else { return }
        dfs(root?.left, &res)  // 左
        res.append(root!.val)  // 中
        dfs(root?.right, &res) // 右
    }
    
    /*
     指针不断向节点的左孩子移动，为了找到我们当前需要遍历的节点。途中不断执行入栈操作
     当指针为空时，则开始出栈，并将指针指向出栈节点的右孩子
     */
    func inorderTraversal2(_ root: TreeNode?) -> [Int] {
        guard root != nil else {return []}
        var stack = [TreeNode]()
        var cur = root
        var res = [Int]()
        while stack.count > 0 || cur != nil {
            while cur != nil {
                stack.append(cur!)
                cur = cur!.left
            }
            var temp = stack.removeLast()
            res.append(temp.val)
            // 将指针指向右孩子
            cur = temp.right
        }
        return res
    }
}

/*
 perorder 前序
 inorder 中序
 postorder 后序
 */
class Solution_145 {
    func postorderTraversal(_ root: TreeNode?) -> [Int] {
        guard root != nil else {return []}
        var res = [Int]()
        dfs(root, &res)
        return res
    }
    
    func dfs(_ root: TreeNode?, _ res: inout [Int]) {
        guard root != nil else { return }
        dfs(root?.left, &res)  // 左
        dfs(root?.right, &res) // 右
        res.append(root!.val)  // 中
    }
    
    func postorderTraversal2(_ root: TreeNode?) -> [Int] {
        guard root != nil else {return []}
        
        var res = [Int]()
        var stack = [TreeNode]()
        var cur = root
        var per:TreeNode? = nil
        while stack.count > 0 || cur != nil {
            while cur != nil {
                stack.append(cur!)
                cur = cur?.left
            }
            
            cur = stack.removeLast()
            
            if cur?.right == nil || cur?.right === per {
                res.append(cur!.val)
                per = cur
                cur = nil
            } else {
                stack.append(cur!)
                cur = cur?.right
            }
        }
        
        return res
    }
}





