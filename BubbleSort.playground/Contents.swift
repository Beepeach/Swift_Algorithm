import UIKit

// MARK: - 원본을 바꾸는 bubbleSort
func bubbleSort<T: Comparable> (array: inout [T]) {
    var isSwap: Bool
    
    for i in 0 ..< array.count - 1 {
        isSwap = false
        for j in 0 ..< array.count - 1 - i {
            if array[j] > array[j + 1] {
                array.swapAt(j, j + 1)
                isSwap = true
            }
        }
        
        if isSwap == false {
            return
        }
    }
}

var array: [Int] = []

for _ in 1 ... 10 {
    array.append(Int.random(in: 1 ... 100))
}

bubbleSort(array: &array)

print(array)



// 새로운 배열을 리턴해주는 bubbleSort
func bubbleSort<T: Comparable> (array: [T]) -> [T] {
    var returnedArray: [T] = array
    var isSwap: Bool
    
    for i in 0 ..< array.count - 1 {
        isSwap = false
        for j in 0 ..< array.count - 1 - i {
            if returnedArray[j] > returnedArray[j + 1] {
                returnedArray.swapAt(j, j + 1)
                isSwap = true
            }
        }
        
        if isSwap == false {
            return returnedArray
        }
    }
    
    return returnedArray
}

array.shuffle()

print(bubbleSort(array: array))
