//
//  Solution_461.swift
//  Interview-hot100
//
//  Created by zhangyangyang on 2022/4/26.
//

class Solution_461 {
    func hammingDistance(_ x: Int, _ y: Int) -> Int {
        return x^y.nonzeroBitCount
    }
/*
1    0 0 0 1
4    0 1 0 0
----
5    0 1 0 1
*/
    
    
/*
 
 5&4 = 4
 5 0 1 0 1
 4 0 1 0 0
 ---
   0 1 0 0
 
 
 4&3 = 0
 4 0 1 0 0
 3 0 0 1 1
 0 0 0 0 0
 
 */
    
    func hammingDistance2(_ x: Int, _ y: Int) -> Int {
        var r = x^y
        var count = 0
        while r != 0 {
            
            r = r & (r - 1)
            print(r)
            count += 1
        }
        return count
    }
}
