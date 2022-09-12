//
//  Solution_103.swift
//  Interview-hot100
//
//  Created by zhangyangyang on 2022/5/9.
//


class Solution_103 {
    
    func zigzagLevelOrder(_ root: TreeNode?) -> [[Int]] {
        guard root != nil else { return [] }
        var ret = [[Int]]()
        var queue = [TreeNode]()
        
        queue.append(root!)
        while queue.count > 0 {
            var level = [Int]()
            let nums = queue.count
            for i in 0..<nums {
                var temp = queue.removeFirst()
                level.append(temp.val)
                
                if let leftnode = temp.left {
                    queue.append(leftnode)
                }
                
                if let rightnode = temp.right {
                    queue.append(rightnode)
                }
            }
        
            ret.append(level)
        }
        return ret
    }
}
