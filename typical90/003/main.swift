import Foundation


struct Graph {
    var n: Int
    var edges: [Set<Int>]

    init(_ n: Int) {
        self.n = n
        edges = [Set<Int>](repeating: [], count: n)
    }

    mutating func add_edge(_ u: Int, _ v: Int) {
        edges[u].insert(v)
        edges[v].insert(u)
    }

}

func solve(_ N:Int, _ A:[Int], _ B:[Int]) {
    var g = Graph(N)

    for i in 0..<N-1 {
        g.add_edge(A[i]-1, B[i]-1)
    }

    var max_dist = 0
    var max_dist_idx = 0
    var checked = [Bool](repeating: false, count: N)

    func dfs(_ now: Int, _ dist: Int) {
        if dist > max_dist {
            max_dist = dist
            max_dist_idx = now
        }
        checked[now] = true
        for v in g.edges[now] {
            if checked[v] {
                continue
            }
            dfs(v, dist+1)
        }
    }

    dfs(0, 0)


    var max_dist2 = 0
    var checked2 = [Bool](repeating: false, count: N)

    func dfs2(_ now: Int, _ dist: Int) {
        if dist > max_dist2 {
            max_dist2 = dist
        }
        checked2[now] = true
        for v in g.edges[now] {
            if checked2[v] {
                continue
            }
            dfs2(v, dist+1)
        }
    }

    dfs2(max_dist_idx, 0)

    print(max_dist2+1)
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
    var A = [Int](repeating: 0, count: N-1)
    var B = [Int](repeating: 0, count: N-1)
    for i in 0..<N-1 {
        A[i] = readInt()
        B[i] = readInt()
    }
    _ = solve(N, A, B)
}

#if DEBUG
let caseNumber = 1
_ = freopen("in_\(caseNumber).txt", "r", stdin)
#endif

main()
