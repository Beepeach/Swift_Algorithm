import UIKit

let graph: [String: [String: Int]] = [
    "A": ["B": 8, "C": 1, "D": 2],
    "B": [:],
    "C": ["B": 5, "D": 2],
    "D": ["E": 3, "F": 5],
    "E": ["F": 1],
    "F": ["A": 5]
]


func dijkstra(data: [String: [String: Int]], start: String) -> [String: Int]{
    
    var distances: [String: Int] = {
        var list: [String: Int] = [:]
        
        data.forEach { (key, _) in
            list[key] = Int.max
        }
        
        return list
    }()
    distances[start] = 0
    
    // 우선순위 큐를 직접 만들어야한다.
    // 여기서는 귀찮으니 일단 매번 sort하는거로...
    var queue: [(Int, String)] = []
    queue.append((distances[start]!, start))
    
    while !queue.isEmpty {
        queue.sort { $0.0 < $1.0 }
        let (currentDistance, currentNode) = queue.removeFirst()
        
        if distances[currentNode]! < currentDistance {
            continue
        }
        
        for (adjacent, weight) in data[currentNode]! {
            let distance = currentDistance + weight
            
            if distance < distances[adjacent]! {
                distances[adjacent] = distance
                queue.append((distance, adjacent))
            }
        }
    }
    
    return distances
}

print(dijkstra(data: graph, start: "A"))
