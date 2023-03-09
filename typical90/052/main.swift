import Foundation

let MOD = 1000000007

func solve(_ N:Int, _ A:[[Int]]) {
    var ans = 0

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
    var A = [[Int]](repeating: [Int](repeating: 0, count: 6), count: N)
    for i in 0..<N {
        for j in 0..<6 {
            A[i][j] = readInt()
        }
    }
    _ = solve(N, A)
}

#if DEBUG
let caseNumber = 1
_ = freopen("in_\(caseNumber).txt", "r", stdin)
#endif

main()
