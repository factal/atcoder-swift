import Foundation


func solve(_ H:Int, _ W:Int, _ A:[[Int]]) {
    var col_prefix_sum = [Int](repeating: 0, count: H)
    var row_prefix_sum = [Int](repeating: 0, count: W)

    for i in 0..<H {
        for j in 0..<W {
            col_prefix_sum[i] += A[i][j]
            row_prefix_sum[j] += A[i][j]
        }
    }

    var ans = [[Int]](repeating: [Int](repeating: 0, count: H), count: W)

    for i in 0..<H {
        for j in 0..<W {
            ans[j][i] = col_prefix_sum[i] + row_prefix_sum[j] - A[i][j]
        }
    }

    for i in 0..<H {
        for j in 0..<W {
            print(ans[j][i], terminator: " ")
        }
        print()
    }
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
    let H = readInt()
    let W = readInt()
    var A = [[Int]](repeating: [Int](repeating: 0, count: W), count: H)
    for i in 0..<H {
        for j in 0..<W {
            A[i][j] = readInt()
        }
    }
    _ = solve(H, W, A)
}

#if DEBUG
let caseNumber = 1
_ = freopen("in_\(caseNumber).txt", "r", stdin)
#endif

main()
