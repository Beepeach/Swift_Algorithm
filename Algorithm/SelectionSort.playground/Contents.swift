import UIKit


// MARK: - 원본을 바꾸는 selectionSort
func selectionSort<T: Comparable>(data: inout [T]) {
    for standardIndex in 0 ..< data.count - 1 {
        var minValueIndex: Int = standardIndex
        for i in standardIndex + 1 ..< data.count {
            if data[i] < data[minValueIndex] {
                minValueIndex = i
            }
        }
        
        data.swapAt(minValueIndex, standardIndex)
    }
}

var array: [Int] = []
for _ in 1...10 {
    array.append(Int.random(in: 1...100))
}
print(array)

selectionSort(data: &array)
print(array)
 

// MARK: - 새로운 배열을 리턴하는 selectionSort
func selectionSort<T: Comparable>(data: [T]) -> [T] {
    var returnedArray: [T] = data
    
    for standardIndex in 0 ..< returnedArray.count - 1 {
        var minValueIndex: Int = standardIndex
        for i in standardIndex + 1 ..< returnedArray.count {
            if returnedArray[i] < returnedArray[minValueIndex] {
                minValueIndex = i
            }
        }
        
        returnedArray.swapAt(standardIndex, minValueIndex)
    }
    
    return returnedArray
}

array.shuffle()
print(array)

print(selectionSort(data: array))

