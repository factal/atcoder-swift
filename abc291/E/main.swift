import Foundation

let YES = "Yes"
let NO = "No"

func solve(_ N:Int, _ M:Int, _ X:[Int], _ Y:[Int]) {
    var next = [Int](repeating: -1, count: N)
    var prev = [Int](repeating: -1, count: N)

    for i in 0..<M {
        if (next[X[i] - 1] == -1 || next[X[i] - 1] == Y[i] - 1) && (prev[Y[i] - 1] == -1 || prev[Y[i] - 1] == X[i] - 1) {
            next[X[i] - 1] = Y[i] - 1
            prev[Y[i] - 1] = X[i] - 1
        } else {
            print(NO)
            return
        }
    }

    let terminal_prev = prev.firstIndex(of: -1) ?? -1

    var idx = terminal_prev
    var cnt = 1
    var ans: [Int] = [Int](repeating: 0, count: N)
    for i in 0..<N {
        ans[idx] = cnt
        idx = next[idx]
        cnt += 1
    }

    print(YES)
    print(ans.map { String($0) }.joined(separator: " "))
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
    var X = [Int](repeating: 0, count: M)
    var Y = [Int](repeating: 0, count: M)
    for i in 0..<M {
        X[i] = readInt()
        Y[i] = readInt()
    }
    _ = solve(N, M, X, Y)
}

#if DEBUG
let caseNumber = 1
_ = freopen("in_\(caseNumber).txt", "r", stdin)
#endif

main()
