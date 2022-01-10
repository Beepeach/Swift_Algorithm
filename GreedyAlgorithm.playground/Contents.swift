import UIKit

let coins = [500, 100, 50, 1]
print(coins.sorted {$0 > $1})


func minCoinCount(value: Int, coins: [Int]) -> [[Int]] {
    var totalCointCount: Int = 0
    var value = value
    var result: [[Int]] = []
    let sortedList = coins.sorted { $0 > $1 }
    
    for coin in sortedList {
        let coinNum = value / coin
        totalCointCount += coinNum
        value -= coinNum * coin
        result.append([coin, coinNum])
    }
    
    return result
}

minCoinCount(value: 4720, coins: coins)



// MARK: -

let dataList: [(Int, Int)] = [(15, 12), (10, 10), (30, 5), (20, 10), (25, 8)]

print(dataList.sorted {
    Double($0.1) / Double($0.0) > Double($1.1) / Double($1.0)
})

func getMaxValue(list: [(Int, Int)], capacity: Int) -> [Any]{
    let sortedList = list.sorted {
        Double($0.1) / Double($0.0) > Double($1.1) / Double($1.0)
    }
    var capacity = capacity
    var totalValue: Double = 0.0
    var result: [Any] = []
    
    for data in sortedList {
        if capacity - data.0 >= 0 {
            capacity -= data.0
            totalValue += Double(data.1)
            result.append([data.0, data.1, 1])
        } else {
            let fraction: Double = Double(capacity) / Double(data.0)
            totalValue += Double(data.1) * fraction
            result.append([data.0, data.1, fraction])
            break
        }
    }
    
    return result
}

getMaxValue(list: dataList, capacity: 30)

