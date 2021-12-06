import UIKit

class Heap <T: Comparable> {
    private var heapArray: [T?] = [nil]
    
    init(rootNode: T) {
        heapArray.append(rootNode)
    }
    
    func printHeapData() {
        print(self.heapArray)
    }
    
    func insert(data: T) {
        self.heapArray.append(data)
        
        var insertedIndex: Int = self.heapArray.count - 1
        
        while self.isMoveUp(insertedIndex: insertedIndex) {
            let parentIndex: Int = insertedIndex / 2
            self.heapArray.swapAt(insertedIndex, parentIndex)
            
            insertedIndex = parentIndex
        }
    }
    
    private func isMoveUp(insertedIndex: Int) -> Bool {
        if insertedIndex <= 1 {
            return false
        }
        
        let parentIndex = insertedIndex / 2
        
        if self.heapArray[insertedIndex]! > self.heapArray[parentIndex]! {
            return true
        } else {
            return false
        }
    }
    
    func pop() -> T? {
        if self.heapArray.count <= 1 {
            return nil
        }
        
        let removedData: T? = self.heapArray[1]
        var popedIndex: Int = 1
        
        self.heapArray[1] = self.heapArray.last!
        self.heapArray.removeLast()
        
        while isMoveDown(popedIndex: popedIndex) {
            let leftChildIndex: Int = popedIndex * 2
            let rightChildIndex: Int = popedIndex * 2 + 1
            
            if rightChildIndex >= self.heapArray.count {
                if self.heapArray[popedIndex]! < self.heapArray[leftChildIndex]! {
                    self.heapArray.swapAt(popedIndex, leftChildIndex)
                    popedIndex = leftChildIndex
                }
                // case3: 노드가 모두 있을때
            } else {
                if self.heapArray[leftChildIndex]! > self.heapArray[rightChildIndex]! {
                    if self.heapArray[popedIndex]! < self.heapArray[leftChildIndex]! {
                        self.heapArray.swapAt(popedIndex, leftChildIndex)
                        popedIndex = leftChildIndex
                    }
                } else {
                    if self.heapArray[popedIndex]! < self.heapArray[rightChildIndex]! {
                        self.heapArray.swapAt(popedIndex, rightChildIndex)
                        popedIndex = rightChildIndex
                    }
                }
            }
        }
        
        return removedData
    }
    
    private func isMoveDown(popedIndex: Int) -> Bool {
        let leftChildIndex: Int = popedIndex * 2
        let rightChildIndex: Int = popedIndex * 2 + 1
        
        // case1: 왼쪽노드가 없을때
        if leftChildIndex >= self.heapArray.count {
            return false
            // case2: 오른쪽 노드만 없을때
        } else if rightChildIndex >= self.heapArray.count {
            if self.heapArray[popedIndex]! < self.heapArray[leftChildIndex]! {
                return true
            } else {
                return false
            }
            // case3: 노드가 모두 있을때
        } else {
            if self.heapArray[leftChildIndex]! > self.heapArray[rightChildIndex]! {
                if self.heapArray[popedIndex]! < self.heapArray[leftChildIndex]! {
                    return true
                } else {
                    return false
                }
            } else {
                if self.heapArray[popedIndex]! < self.heapArray[rightChildIndex]! {
                    return true
                } else {
                    return false
                }
            }
        }
    }
}




let heap: Heap = Heap(rootNode: 15)

heap.insert(data: 10)
heap.insert(data: 8)
heap.insert(data: 5)
heap.insert(data: 4)
heap.insert(data: 20)
heap.printHeapData()

heap.pop()
heap.printHeapData()
