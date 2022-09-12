//
//  Solution_146.swift
//  Interview-hot100
//
//  Created by zhangyangyang on 2022/4/22.
//


class Solution_146 {
    
    class NodeList {
        
        var key: Int
        var value: Int
        var next: NodeList?
        var prev: NodeList?
        init(_ key: Int, _ value: Int) {
            self.key = key
            self.value = value
        }
    }
    
    class LRUCache {
        
        var capacity: Int
        
        private let head: NodeList
        private let tail: NodeList
        
        private var cache = [Int: NodeList]()
        
        init(_ capacity: Int) {
            self.capacity = capacity
            head = NodeList(-1,-1)
            tail = NodeList(-1,-1)
            head.next = tail
            tail.prev = head
        }
        
        func add(_ node: NodeList) {
            let headNext = head.next
            head.next = node
            headNext?.prev = node
            node.prev = head
            node.next = headNext
        }
        
        
        func remove(_ node: NodeList) {
            let nextNode = node.next
            let pervNode = node.prev
            nextNode?.prev = pervNode
            pervNode?.next = nextNode
        }
        
        
        func reset(_ node: NodeList) {
            remove(node)
            add(node)
        }
        
        func get(_ key: Int)->Int {
            guard let node = cache[key] else {
                return -1
            }
            reset(node)
            return node.value
        }
        
        func put(_ key: Int, _ value: Int) {
            if let exist = cache[key] {
                remove(exist)
                cache.removeValue(forKey: key)
            }
            
            let newNode = NodeList(key, value)
            add(newNode)
            cache[key] = newNode
            
        
            guard cache.count > capacity, let oldNode = tail.prev else {
                return
            }
            
            remove(oldNode)
            cache.removeValue(forKey: oldNode.key)
        }
    }
}





