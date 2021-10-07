import UIKit

// MARK: - 2차원 배열 사용 방법
let array: [[Int]] = [[1, 2, 3], [4, 5 ,6], [7, 8 ,9]]

print(array[2][2], array[2][1], array[2][0])



// MARK: - 배열안에서 해당 단어의 개수를 알아내는 방법

let dataset: [String] = ["Braund, Mr. Owen Harri",
                         "Cumings, Mrs. John Bradley (Florence Briggs Thayer)",
                         "Heikkinen, Miss. Laina",
                         "Futrelle, Mrs. Jacques Heath (Lily May Peel",
                         "Allen, Mr. William Henry",
                         "Johnson, Mrs. Oscar W (Elisabeth Vilhelmina Berg)"
]

var mCount: Int = 0

for name in dataset {
    for char in name {
        if char == "M" {
            mCount += 1
        }
    }
}

print(mCount)
