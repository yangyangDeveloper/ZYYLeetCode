//
//  Solution_70.swift
//  Interview-hot100
//
//  Created by zhangyangyang on 2022/4/26.
//

import Foundation

/*
到达第n阶有两种方式，
1、由n-1阶爬1阶
2、由n-2阶爬2阶
所以，到第n阶的方法应该是（（n-1）阶的方法）+（（n-2）阶的方法）
*/


class Solution_70 {
    func climbStairs(_ n: Int) -> Int {
    
        if n < 3 {
            return n
        }
        
        var l1 = 1
        var l2 = 2
        var result = 3
        for i in 3...n {
            result = l1 + l2
            l1 = l2
            l2 = result
        }
        return result
    }
}

