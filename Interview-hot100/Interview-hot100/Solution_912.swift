//
//  Solution_912.swift
//  Interview-hot100
//
//  Created by zhangyangyang on 2022/5/6.
//


class Solution_912 {
    func sortArray(_ nums: [Int]) -> [Int] {
        var arr = nums
        print(nums)
        self._quickSortAction(&arr, 0, arr.count - 1)
        return arr
    }
    
    private func _quickSortAction(_ nums: inout [Int], _ left: Int, _ right: Int) {
        if left >= right {
            return
        }
        var i = left;
        var j = right;
        // 基准数
        let key = nums[i];
        
        while i<j {
            
            // 移动hight指针
            while i<j && nums[j] >= key{
                j -= 1;
            }
            if i < j {
                nums[i] = nums[j];
            }
           
            // 移动低指针
            while i<j && nums[i] <= key{
                i += 1;
            }
            if i < j {
                nums[j] = nums[i]
            }
        }
        
        // 基准数放到合适位置
        nums[i] = key;
        
        self._quickSortAction(&nums, left, i-1)
        self._quickSortAction(&nums, i+1, right)
    }
    
    
}
