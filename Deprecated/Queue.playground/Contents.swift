import UIKit

struct Queue<Element> {
    private var elements: [Element] = [Element]()
    
    public var count: Int {
        return elements.count
    }
    
    public mutating func enqueue(_ element: Element) {
        elements.append(element)
    }
    
    public mutating func dequeue() -> Element? {
        if elements.count == 0 {
            return nil
        }
        
        return elements.removeFirst()
    }
}

var intQueue: Queue<Int> = Queue()
intQueue.enqueue(1)
intQueue.enqueue(2)
intQueue.enqueue(3)

print(intQueue)
print(intQueue.count)

for _ in 0 ... 3 {
    intQueue.dequeue()
    print(intQueue.count)
    print(intQueue)
}
