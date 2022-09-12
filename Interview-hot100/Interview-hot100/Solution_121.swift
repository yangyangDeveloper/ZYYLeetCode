//
//  Solution_121.swift
//  Interview-hot100
//
//  Created by zhangyangyang on 2022/4/29.
//

class Solution_121 {
    func maxProfit(_ prices: [Int]) -> Int {
        var minv = prices[0]
        var maxv = 0
        for index in 1..<prices.count {
            let temp = prices[index] - minv
            if temp > 0 {
                maxv = max(maxv, temp)
            } else {
                minv = prices[index]
            }
        }
        return maxv
    }
}
