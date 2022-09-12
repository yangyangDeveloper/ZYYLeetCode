//
//  Solution_101.swift
//  Interview-hot100
//
//  Created by zhangyangyang on 2022/5/1.
//

class Solution_101 {
    
    func isSymmetric(_ root: TreeNode?) -> Bool {
        guard root != nil else {
            return true
        }
        
        var queue = [TreeNode?]()
        queue.append(root?.left)
        queue.append(root?.right)
        
        while queue.count > 0 {
            let leftnode = queue.removeFirst()
            let rightnode = queue.removeFirst()
            if leftnode == nil && rightnode == nil {
                // 停止本次循环  进入下一轮
                continue
            }
            
            if leftnode == nil || rightnode == nil {
                return false
            }
            
            if leftnode?.val != rightnode?.val {
                return false
            }
            
            queue.append(leftnode?.left)
            queue.append(rightnode?.right)
            queue.append(leftnode?.right)
            queue.append(rightnode?.left)
        }
        
        return true
    }
}
