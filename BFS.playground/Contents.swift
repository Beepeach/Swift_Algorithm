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



func bfs(graph: [String: [String]], startNode: String) -> [String] {
    var visited: [String] = []
    var needVisit: [String] = []
    
    needVisit.append(startNode)
    
    while !needVisit.isEmpty {
        let node = needVisit.removeFirst()
        
        if !visited.contains(node) {
            visited.append(node)
            if let nodes = graph[node] {
                needVisit.append(contentsOf: nodes)
            }
        }
    }
    return visited
}

bfs(graph: graph, startNode: "A")
