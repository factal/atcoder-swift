import Foundation


func solve(_ N:Int, _ Q:Int, _ x:[Int], _ y:[Int], _ q:[Int]) {
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
    let Q = readInt()
    var x = [Int](repeating: 0, count: N)
    var y = [Int](repeating: 0, count: N)
    for i in 0..<N {
        x[i] = readInt()
        y[i] = readInt()
    }
    var q = [Int](repeating: 0, count: Q)
    for i in 0..<Q {
        q[i] = readInt()
    }
    _ = solve(N, Q, x, y, q)
}

#if DEBUG
let caseNumber = 1
_ = freopen("in_\(caseNumber).txt", "r", stdin)
#endif

main()
