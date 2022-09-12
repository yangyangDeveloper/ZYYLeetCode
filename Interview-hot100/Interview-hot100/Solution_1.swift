//
//  Solution_1.swift
//  Interview-hot100
//
//  Created by zhangyangyang on 2022/4/28.
//


class Solution_1 {
    //  1 2 3 4    3
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dic = [Int:Int]()
        for (i, item) in nums.enumerated() {
            dic[item] = i
        }
        for i in 0..<nums.count {
            let dump = target - nums[i]
            if let k = dic[dump], k != i {
                return [i, k];
            }
        }
        return [-1, -1]
    }
}
