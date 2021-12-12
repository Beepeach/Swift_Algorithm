import UIKit

// MARK: - Factorial
func factorial(num: Int) -> Int {
    var returnedValue: Int = 1
    for i in 1 ... num {
        returnedValue *= i
    }
    
    return returnedValue
}

factorial(num: 1)
factorial(num: 2)
factorial(num: 3)
factorial(num: 4)


func factorialWithRecursive(num : Int) -> Int {
    if num > 1 {
        return num * factorial(num: num - 1)
    } else {
        return num
    }
}

factorialWithRecursive(num: 1)
factorialWithRecursive(num: 2)
factorialWithRecursive(num: 3)
factorialWithRecursive(num: 4)


// MARK: - Involution
func involution(num: Int, square: Int) -> Int {
    var returnedValue: Int = 1
    
    for _ in 1 ... square {
        returnedValue *= num
    }
    
    return returnedValue
}

involution(num: 10, square: 4)


func involutionWithRecursive(num: Int, square: Int) -> Int {
    if square > 1 {
        return num * involutionWithRecursive(num: 10, square: square - 1)
    } else {
        return num
    }
}

involutionWithRecursive(num: 10, square: 4)



// MARK: - Sum
func sumElements (data: [Int]) -> Int {
    if data.count <= 1 {
        return data.last ?? 0
    }
    
    return (data.last ?? 0) + sumElements(data: data.dropLast())
}

let array: [Int] = [1, 2, 3, 4, 5]
print(sumElements(data: array))



// MARK: - Palindrome
