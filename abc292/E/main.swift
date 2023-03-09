import Foundation

// ordered graph
struct Graph {
    let n: Int
    var edges: [Set<Int>]
    var reachable: [Set<Int>]

    init(_ n: Int) {
        self.n = n
        edges = [Set<Int>](repeating: [], count: n)
        reachable = [Set<Int>](repeating: [], count: n)
    }

    mutating func add_edge(_ u: Int, _ v: Int) {
        edges[u].insert(v)
    }

    mutating func make_reachable() {
        reachable = [Set<Int>](repeating: [], count: n)
        for i in 0..<n {
            var visited = [Bool](repeating: false, count: n)
            dfs(i, i, &visited)
        }
    }

    mutating func dfs(_ root: Int, _ now: Int, _ visited: inout [Bool]) {
        visited[now] = true

        if root != now {
            reachable[root].insert(now)
        }

        for v in edges[now] {
            if visited[v] == false {
                dfs(root, v, &visited)
            }
        }
    }
}

func solve(_ N:Int, _ M:Int, _ u:[Int], _ v:[Int]) {
    var g = Graph(N)
    for i in 0..<M {
        g.add_edge(u[i]-1, v[i]-1)
    }
    g.make_reachable()

    var cnt = 0
    for i in 0..<N {
        let sub = g.reachable[i].subtracting(g.edges[i])
        // print(g.reachable[i])
        cnt += sub.count
    }

    print(cnt)
}

func main() {
    var tokenIndex = 0, tokenBuffer = [String]()
    func readString() -> String {
        if tokenIndex >= tokenBuffer.count {
            tokenIndex = 0
            tokenBuffer = readLine()!.split(separator: " ").map { String($0) }
        }
        defer { tokenIndex += 1 }
        return tokenBuffer[tokenIndex]
    }
    func readInt() -> Int { Int(readString())! }
    func readDouble() -> Double { Double(readString())! }
    let N = readInt()
    let M = readInt()
    var u = [Int](repeating: 0, count: M)
    var v = [Int](repeating: 0, count: M)
    for i in 0..<M {
        u[i] = readInt()
        v[i] = readInt()
    }
    _ = solve(N, M, u, v)
}

#if DEBUG
let caseNumber = 1
_ = freopen("in_\(caseNumber).txt", "r", stdin)
#endif

main()
