//
//  Solution_3.swift
//  Interview-hot100
//
//  Created by zhangyangyang on 2022/4/22.
//

// 字符串拆分成数组

// 怎么取字符串每个元素

// 如果遇到相同的元素 start元素每次的跳跃  找到结合中那个元素的小标   也就是end


class Solution_3 {
    
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var res = 0, start = 0, end = 0
        
        var dic = [Character: Int]()
        
        let length = s.count
  
        var chars = Array(s)
        
        while start < length && end < length {
            
            let char = chars[end]
            
            // 如果已经存在过
            if let charaindex = dic[char]  {
                // start 完成跳跃
                start = max(start, charaindex)
            }
            
            // end 每次都走1
            end += 1
            
            dic[char] = end // 存到一个字典里
            
            res = max(res, end - start)
        }
        return res
    }
}
