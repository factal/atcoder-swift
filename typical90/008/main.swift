import Foundation

let MOD = 1000000007

func solve(_ N:Int, _ S:String) {
    let s = Array(S)
    let atc = Array("atcoder")
    var dp = [[Int]](repeating: [Int](repeating: 0, count: N+1), count: 8)
    dp[0][0] = 1

    for i in 0..<8 {
        for j in 0..<N {
            dp[i][j+1] += dp[i][j]
            if i != 7 && s[j] == atc[i]  {
                dp[i+1][j+1] += dp[i][j]
            }

            dp[i][j+1] = dp[i][j+1]
        }
    }

    print(dp[7][N])
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
    let S = readString()
    _ = solve(N, S)
}

#if DEBUG
let caseNumber = 1
_ = freopen("in_\(caseNumber).txt", "r", stdin)
#endif

main()
