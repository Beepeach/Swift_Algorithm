import UIKit

// MARK: - 동적계획법

func calculateFibonacci(_ num: Int) -> [Int] {
    var array: [Int] = Array(repeating: 0, count: num + 1)
    
    if num >= 1 {
        array[1] = 1
    }
   
    if num >= 2 {
        for i in 2 ... num {
            array[i] = array[i - 1] + array[i - 2]
        }
    }
    
    return array
}

calculateFibonacci(0)
calculateFibonacci(1)
calculateFibonacci(2)
calculateFibonacci(3)
calculateFibonacci(4)
calculateFibonacci(5)

