import Foundation


func solve(_ N:Int, _ K:Int) {
    var factorNum = [Int](repeating: 0, count: N+1)

    // enumerate prime numbers
    for i in 2...N {
        if factorNum[i] != 0 { continue }
        var j = i
        while j <= N {
            factorNum[j] += 1
            j += i
        }
    }

    var ans = 0

    for i in 1...N {
        if factorNum[i] >= K {
            ans += 1
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
    let K = readInt()
    _ = solve(N, K)
}

#if DEBUG
let caseNumber = 1
_ = freopen("in_\(caseNumber).txt", "r", stdin)
#endif

main()
