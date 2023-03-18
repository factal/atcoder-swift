import Foundation


func solve(_ N:Int, _ A:[Int]) {
    var dp = [[Int]](repeating: [Int](repeating: 0, count: 2*N), count: 2*N)

    for i in 1...N {
        let len = 2*i
        for l in 0...(2*N-len) {
            if len == 2 {
                dp[l][l+1] = abs(A[l] - A[l+1])
                continue
            }

            let r = l + len - 1

            let case_1 = dp[l+1][r-1] + abs(A[l] - A[r])

            var case_2 = 1000000000


            for j in l+1...r-1 {
                if (l - j + 1) % 2 != 0 {
                    continue
                }
                case_2 = min(case_2, dp[l][j] + dp[j+1][r])
            }

            dp[l][r] = min(case_1, case_2)
        }
    }

    // for i in 0..<2*N {
    //     print(dp[i])
    // }

    print(dp[0][2*N-1])

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
    var A = [Int](repeating: 0, count: 2*N)
    for i in 0..<2*N {
        A[i] = readInt()
    }
    _ = solve(N, A)
}

#if DEBUG
let caseNumber = 1
_ = freopen("in_\(caseNumber).txt", "r", stdin)
#endif

main()
