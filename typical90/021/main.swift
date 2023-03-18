import Foundation

// strongly connected component
struct SCC {
    let n: Int
    var edges: [[(Int, Bool)]]
    var checked: [Int]
    var orderList: [Int]
    var groupList: [Int]
    var cnt = 0

    init(_ N: Int) {
        n = N
        edges = [[(Int, Bool)]](repeating: [], count: n)
        checked = [Int](repeating: 0, count: n)
        orderList = [Int](repeating: -1, count: n)
        groupList = [Int](repeating: -1, count: n)
    }

    mutating func dfs(_ now: Int, _ prev: Int) {
        checked[now] = 1
        for v in edges[now] {
            if checked[v.0] == 1 || v.0 == prev || v.1 == false {
                continue
            }
            dfs(v.0, now)
        }
        orderList[cnt] = now
        cnt += 1
        return
    }

    mutating func dfs2(_ now: Int, _ group: Int) {
        groupList[now] = group
        for v in edges[now] {
            if groupList[v.0] != -1 || v.1 == true {
                continue
            }
            dfs2(v.0, group)
        }
        return
    }

    mutating func make_group() {
        for i in 0..<n {
            if checked[i] == 0 {
                dfs(i, -1)
            }
        }
        for j in (0...n-1).reversed() {
            if orderList[j] == -1 {
                break
            }
            if groupList[orderList[j]] != -1 {
                continue
            }

            dfs2(orderList[j], orderList[j])
        }
    }
}


func solve(_ N:Int, _ M:Int, _ A:[Int], _ B:[Int]) {

    var scc = SCC(N)
    for i in 0..<M {
        scc.edges[A[i]-1].append((B[i]-1, true))
        scc.edges[B[i]-1].append((A[i]-1, false))
    }
    scc.make_group()

    var cnt: [Int] = [Int](repeating: 0, count: N)
    for i in 0..<N {
        cnt[scc.groupList[i]] += 1
    }

    var ans = 0
    for i in 0..<N {
        ans += cnt[i] * (cnt[i] - 1) / 2
    }

    print(ans)
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
    var A = [Int](repeating: 0, count: M)
    var B = [Int](repeating: 0, count: M)
    for i in 0..<M {
        A[i] = readInt()
        B[i] = readInt()
    }
    _ = solve(N, M, A, B)
}

#if DEBUG
let caseNumber = 1
_ = freopen("in_\(caseNumber).txt", "r", stdin)
#endif

main()
