import Foundation

func solve(_ N:Int, _ M:Int, _ S:[String]) {
    var edges = [Set<Int>](repeating: [], count: N)

    for i in 0..<N {
        for j in 0..<M {
            if S[i][j] == "1" {
                edges[i].insert(i + j + 1)
            }
        }
    }

    var dist_from_1 = [Int](repeating: -1, count: N)
    
    // calc dist_from_1
    var q = [Int]()
    q.append(1)
    dist_from_1[1] = 0
    while q.count > 0 {
        let now = q.removeFirst()
        for v in edges[now] {
            if dist_from_1[v] != -1 {
                continue
            }
            dist_from_1[v] = dist_from_1[now] + 1
            q.append(v)
        }
    }

    var costs = [Int](repeating: -1, count: N)

    for i in 1..<N-1 {
        if dist_from_1[i] == -1 {
            costs[i] = dist_from_1[i]
        }

        for j in (i+1)...(i+M) {
            if dist_from_1[j] == -1 {
                continue
            }

            for v in edges[j] {
                if dist_from_1[v] == -1 {
                    continue
                }
                
            }
        }

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
    var S = [String](repeating: "", count: N)
    for i in 0..<N {
        S[i] = readString()
    }
    _ = solve(N, M, S)
}

#if DEBUG
let caseNumber = 1
_ = freopen("in_\(caseNumber).txt", "r", stdin)
#endif

main()
