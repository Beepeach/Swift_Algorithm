import UIKit

var graph: Dictionary<String, [String]> = [:]

graph["A"] = ["B", "C"]
graph["B"] = ["A", "D"]
graph["C"] = ["A", "G", "H", "I"]
graph["D"] = ["B", "E", "F", "I"]
graph["E"] = ["D"]
graph["F"] = ["D"]
graph["G"] = ["C"]
graph["H"] = ["C"]
graph["I"] = ["C", "J"]
graph["J"] = ["I"]


func dfs(graph: [String: [String]], startNode: String) -> [String] {
    var willVisit: [String] = []
    var visited: [String] = []
    willVisit.append(startNode)
    
    while !willVisit.isEmpty {
        let node = willVisit.removeLast()
        
        if !visited.contains(node) {
            visited.append(node)
            willVisit.append(contentsOf: graph[node]!)
        }
    }
    
    return visited
}

dfs(graph: graph, startNode: "A")
