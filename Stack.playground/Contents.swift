import UIKit


struct Stack<Element> {
    private var elements: [Element] = []
    
    public var count: Int {
        return elements.count
    }
    
    public mutating func push(_ element: Element) {
        elements.append(element)
    }
    
    public mutating func pop() -> Element? {
        return elements.popLast()
    }
}

var stack: Stack<Int> = Stack()
stack.push(1)
stack.push(2)
stack.push(3)

print(stack)

for _ in 0...3 {
    print(stack.pop() as Any, stack)
}

