import Foundation

func solve(_ N:Int, _ M:Int, _ S:[String]) {
    var edges = [Set<Int>](repeating: [], count: N)

    for i in 0..<N {
        for j in 0..<M {
            let index = S[i].index(S[i].startIndex, offsetBy: j)
            if S[i][index] == "1" {
                edges[i].insert(i + j + 1)
            }
        }
    }

    var dist_from_1 = [Int](repeating: -1, count: N)
    
    // calc dist_from_1
    var q = [Int]()
    q.append(0)
    dist_from_1[0] = 0
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

    var mins = [Int](repeating: 1000000, count: N)

    for i in 1..<N-1 {
        // print("---------- i: \(i) ----------")

        if dist_from_1[i] == -1 {
            // costs[i] = dist_from_1[i]
            mins[i] = dist_from_1[N-1]
            continue
        }

        // print("left interval:")

        var shortest_right_interval = [Int](repeating: 1000000, count: N)

        for j in (i-M)...(i-1) {
            if j < 0 {
                continue
            }

            if dist_from_1[j] == -1 {
                continue
            }

            // search for pathes that are out of range (i, i+M)
            var costs: [(to: Int, cost: Int)] = []
            func search(_ now: Int, _ cost: Int) {
                if now > i {
                    costs.append((now, cost + dist_from_1[j]))
                    shortest_right_interval[now] = min(shortest_right_interval[now], cost + dist_from_1[j])
                }
                if now == N-1 {
                    costs.append((now, cost + dist_from_1[j]))
                    shortest_right_interval[now] = min(shortest_right_interval[now], cost + dist_from_1[j])
                    return
                }

                for v in edges[now] {
                    if v == i {
                        continue
                    }
                    if v > i+M {
                        return
                    }
                    search(v, cost + 1)
                }
            }

            search(j, 0)

            // print("from: \(j) \(costs)")
            // print(shortest_right_interval)
        }

        // print("right interval:")

        for j in (i+1)...(i+M) {
            if j >= N {
                break
            }

            if dist_from_1[j] == -1 {
                continue
            }

            // search for pathes that are out of range (i, i+M)
            var costs: [(to: Int, cost: Int)] = []
            func search(_ now: Int, _ cost: Int) {
                if now > i+M {
                    costs.append((now, dist_from_1[N-1] - dist_from_1[now] + cost + shortest_right_interval[j]))
                    mins[i] = min(mins[i], dist_from_1[N-1] - dist_from_1[now] + cost + shortest_right_interval[j])
                }

                if now == N-1 {
                    costs.append((now, dist_from_1[N-1] - dist_from_1[now]  + shortest_right_interval[j]))
                    mins[i] = min(mins[i], dist_from_1[N-1] - dist_from_1[now] + cost + shortest_right_interval[j])
                }

                if now <= i+M {
                        for v in edges[now] {
                            search(v, cost + 1)
                    }
                }
                
            }

            search(j, 0)

            // print("from: \(j) \(costs)")
        }

        

       
    }


    var ans: [Int] = []
    for i in 1..<N-1 {
        if mins[i] > N {
            ans.append(-1)
        } else {
            ans.append(mins[i])
        }
    }

    print(ans.map { String($0) }.joined(separator: " "))
    
    //print(mins)
    //print(edges)
    //print(dist_from_1)
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
