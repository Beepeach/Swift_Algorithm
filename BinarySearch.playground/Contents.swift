import UIKit

func binarySearch<T: Comparable>(data: [T], find: T) -> Bool {
    print(data)
    if data.count == 1 && data[0] == find {
        return true
    }
    
    if data.count == 1 && data[0] != find {
        return false
    }
    
    if data.count == 0 {
        return false
    }
    
    let medium = Int(data.count / 2)
    
    if data[medium] == find {
        return true
    } else if data[medium] > find {
        return binarySearch(data: Array(data[0..<medium]), find: find)
    } else {
        return binarySearch(data: Array(data[medium...]), find: find)
    }
}

var array: [Int] = []
for _ in 0...10 {
    let random = Int.random(in: 0...100)
    array.append(random)
}
array.sort()
print(array)

binarySearch(data: array, find: 22)

