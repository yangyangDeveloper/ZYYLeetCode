//
//  Solution_15.swift
//  Interview-hot100
//
//  Created by zhangyangyang on 2022/4/27.
//

import Foundation

class Solution_15 {
    
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var ans = [[Int]]()
        if nums.count < 3 { return ans }
        
        var arr = nums.sorted()
        
        for i in 0..<arr.count-2 {
            // 如果当前数组大于0 那么三数之和一定大于0
            if arr[i] > 0  {  break }
            // 取重
            if i > 0 && arr[i] == arr[i - 1] { continue }
            
            var l = i + 1
            var r = arr.count - 1
            
            while l < r {
                print("i==\(i), l ==\(l), r ==\(r)");
                let sum = arr[l] + arr[r] + arr[i]
                if sum == 0 {
        
                    ans.append([arr[i],arr[l],arr[r]])
                    
                    // 去重
                    while l < r && arr[l] == arr[l + 1] { l += 1 }
                    while l < r && arr[r] == arr[r - 1] { r -= 1 }
                
                    l += 1
                    r -= 1
                    
                }else if sum < 0 {
                    l += 1
                } else  {
                    r -= 1
                }
            }
        }
        return ans
    }

}

