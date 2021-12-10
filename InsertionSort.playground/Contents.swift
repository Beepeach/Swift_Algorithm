import UIKit

// MARK: - 방식은 똑같지만 Insert가 아닌 swap을 통해서 자리를 바꾸는 방법
func insertionSort<T: Comparable>(swap data: inout [T]) {
    for standardIndex in 1 ..< data.count {
        for comparedIndex in stride(from: standardIndex, to: 0, by: -1) {
            if data[comparedIndex] < data[comparedIndex - 1] {
                data.swapAt(comparedIndex, comparedIndex - 1)
            } else {
                break
            }
        }
    }
}

var array: [Int] = []
for _ in 0...10 {
    array.append(Int.random(in: 0...1000))
}



// MARK: - Insert를 이용해서 정렬하는 방법
// 코드 수정이 필요함
func insertionSort<T: Comparable>(data: inout [T]) {
    var insertedIndex: Int
    for standardIndex in 1 ..< data.count {
        insertedIndex = standardIndex
        for comparedIndex in stride(from: standardIndex - 1, through: 0, by: -1) {
            if data[standardIndex] < data[comparedIndex] {
                insertedIndex = comparedIndex
            } else {
                let value = data.remove(at: standardIndex)
                data.insert(value, at: insertedIndex)
            }
        }
    }
}


print(array)
insertionSort(swap: &array)
print(array)

array.shuffle()
print(array)
insertionSort(data: &array)
print(array)


