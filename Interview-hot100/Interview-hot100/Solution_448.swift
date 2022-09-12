//
//  Solution_448.swift
//  Interview-hot100
//
//  Created by zhangyangyang on 2022/4/26.
//


class Solution_448 {
    
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        if nums.count <= 0 {
            return []
        }
        var res = [Int]()
        var setv = [Int]()
        
        for item in nums {
            setv.append(item)
        }
        
        for i in 1...nums.count {
            if !setv.contains(i) {
                res.append(i)
            }
        }
        return res
    }
}
