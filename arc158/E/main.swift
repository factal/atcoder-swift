import Foundation

let MOD = 998244353

func solve(_ N:Int, _ x:[[Int]]) {
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
    var x = [[Int]](repeating: [Int](repeating: 0, count: N), count: 2)
    for i in 0..<2 {
        for j in 0..<N {
            x[i][j] = readInt()
        }
    }
    _ = solve(N, x)
}

#if DEBUG
let caseNumber = 1
_ = freopen("in_\(caseNumber).txt", "r", stdin)
#endif

main()
