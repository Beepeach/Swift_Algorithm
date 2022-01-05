import UIKit

func mergeSort<T: Comparable>(_ array: [T]) -> [T] {
    if array.count <= 1 {
        return array
    }
    
    let medium = Int(array.count / 2)
    let left = mergeSort(Array(array[..<medium]))
    let right = mergeSort(Array(array[medium...]))
 
    return merge(left, right)
}

func merge<T: Comparable>(_ lhs: [T], _ rhs: [T]) -> [T] {
    var mergedList: [T] = []
    var leftIndex: Int = 0
    var rightIndex: Int = 0
    
    // 비교할 lhs rhs가 남아있을 경우
    while lhs.count > leftIndex && rhs.count > rightIndex {
        if lhs[leftIndex] > rhs[rightIndex] {
            mergedList.append(rhs[rightIndex])
            rightIndex += 1
        } else {
            mergedList.append(lhs[leftIndex])
            leftIndex += 1
        }
    }
    
    // 비교할 rhs가 없을때
    while lhs.count > leftIndex {
        mergedList.append(lhs[leftIndex])
        leftIndex += 1
    }
    
    // 비교할 lhs가 없을때
    while rhs.count > rightIndex {
        mergedList.append(rhs[rightIndex])
        rightIndex += 1
    }
    
    return mergedList
}

var array: [Int] = []

for _ in 0 ..< 10 {
    let random = Int.random(in: 0...1000)
    array.append(random)
}
print(array)

print(mergeSort(array))
