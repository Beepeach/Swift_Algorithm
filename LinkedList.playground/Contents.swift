import UIKit

class Node<T> {
    var data: T
    var next: Node?
    
    init(data: T) {
        self.data = data
        self.next = nil
    }
}

class LinkedList<T> {
    let head: Node<T>
    
    init(data: T) {
        self.head = Node(data: data)
    }
    
    func add(data: T) {
        var currentNode: Node<T> = self.head
        
        while currentNode.next != nil {
            if let next = currentNode.next {
                
            }
        }
    }
}
