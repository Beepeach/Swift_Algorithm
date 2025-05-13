import UIKit

// MARK: - 2차원 배열 사용 방법
let array: [[Int]] = [[1, 2, 3], [4, 5 ,6], [7, 8 ,9]]

print(array[2][2], array[2][1], array[2][0])



// MARK: - 배열안에서 해당 단어의 개수를 알아내는 방법

let stringArray: [String] = ["Sophia", "Olivia", "Heikkinen", "Miss Laina", "Riley", "Emma", "Isabella", "Aria", "Aaliyah", "Mia", "Amelia"]

var eCount: Int = 0

for str in stringArray {
    for char in str {
        if char == "e" {
            eCount += 1
        }
    }
}

print(eCount)
