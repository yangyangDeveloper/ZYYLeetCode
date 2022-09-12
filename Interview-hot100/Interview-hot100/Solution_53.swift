//
//  Solution_53.swift
//  Interview-hot100
//
//  Created by zhangyangyang on 2022/4/28.
//

class Solution_53 {
    
    // f(i) = max(f(i-1)+nums[i], nums[i])
    
    
    func maxSubArray(_ nums: [Int]) -> Int {
        var pre = 0, maxans = nums[0]
        for item in nums {
            pre = max(pre + item, item)
            maxans = max(maxans, pre)
        }
        return maxans
    }
}
