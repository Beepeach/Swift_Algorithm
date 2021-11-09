import UIKit

// MARK: - O(n)

func addNum(to num: Int) -> Int {
    var total: Int = 0

    for i in 1 ... num {
        total += i
    }
    
    return total
}

print(addNum(to: 100))



// MARK: - O(1)

func sum(to num: Int) -> Int {
    let result = Int((num * (num + 1)) / 2)
    
    return result
}

print(sum(to: 100))
