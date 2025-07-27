//: [Previous](@previous)

import Foundation

// Linked List
// - 데이터를 메모리 공간에서 연속적으로 저장하지 않고 노드들을 연결시켜 선형적으로 저장하는 자료구조
// - 접근할때 순차적으로 접근해야한다.
// - 데이터 추가, 제거할때 간편하다.

class Node<T> {
    let value: T
    var next: Node?
    
    init(value: T) {
        self.value = value
    }
}

class LinkedList<T> {
    var head: Node<T>?
    
    init(value: T) {
        self.head = Node(value: value)
    }
    
    func getLastNode() -> Node<T>? {
        var current: Node<T>? = head
        while let next = current?.next {
            current = next
        }
        return current
    }
    
    func appendLast(value: T) {
        if let lastNode = getLastNode() {
            lastNode.next = Node(value: value)
        } else {
            head = Node(value: value)
        }
    }
    
    func printAllList() {
        var current = head
        while let node = current {
            print(node.value)
            current = node.next
        }
    }
    
    func insert(value: T, at index: Int) {
        let newNode = Node(value: value)
        
        if index <= 0 {
            newNode.next = head
            head = newNode
            return
        }
        
        var currentIndex = 0
        var previousNode: Node<T>?
        var currentNode = head
        
        while currentNode != nil && currentIndex < index {
            currentIndex += 1
            previousNode = currentNode
            currentNode = currentNode?.next
        }
        
        if currentIndex == index {
            previousNode?.next = newNode
            newNode.next = currentNode
        } else {
            print("Index out of bounds, value appended at the end.")
            appendLast(value: value)
        }
    }
}

let linkedList1 = LinkedList(value: 6)
linkedList1.appendLast(value: 7)
linkedList1.appendLast(value: 8)

let linkedList2 = LinkedList(value: 3)
linkedList2.appendLast(value: 5)
linkedList2.appendLast(value: 4)

func sum(list: LinkedList<Int>) -> Int {
    var current = list.head
    var sum = 0
    while current != nil {
        sum = (sum * 10) + current!.value
        current = current?.next
    }
    
    return sum
}

print("\(sum(list: linkedList1) + sum(list: linkedList2))")



//: [Next](@next)
