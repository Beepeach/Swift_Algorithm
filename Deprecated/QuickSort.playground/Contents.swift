import UIKit
import PlaygroundSupport

func sortQuickly<T: Comparable>(data: [T]) -> [T] {
    var left: [T] = []
    var right: [T] = []
    
    if data.count <= 1 {
        return data
    }
    
    // 실패할 일이 없고 실행속도 측면에서 !을 사용해도 괜찮지만 혹시 모르니?!?
    guard let pivot = data.first else {
        print("Fail pivot biding")
        return data
    }
    
    for i in 1 ..< data.count {
        if pivot > data[i] {
            left.append(data[i])
        } else {
            right.append(data[i])
        }
    }
    
    return sortQuickly(data: left) + [pivot] + sortQuickly(data: right)
}


var numbers: [Int] = []

(0...50).forEach { _ in
    let random = Int.random(in: 0...1000)
    numbers.append(random)
}

print(numbers)
print("==============================")
print(sortQuickly(data: numbers))

let empty: [Int] = []
sortQuickly(data: empty)


// 이 코드는 순서가 중요하므로 문제가 되는 코드
/*
DispatchQueue.concurrentPerform(iterations: 50) { _ in
    let random = Int.random(in: 0...1000)
    array.append(random)
}
*/
