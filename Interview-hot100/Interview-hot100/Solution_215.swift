//
//  Solution_215.swift
//  Interview-hot100
//
//  Created by zhangyangyang on 2022/4/27.
//

class Solution_215 {
    
    
    func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
        guard nums.count > 0, k > 0 else {
            return 0
        }
        var arr = nums.sorted()
        let t = nums.count - k
        return arr[t]
    }
}
