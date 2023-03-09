import Foundation


func solve(_ N:Int, _ Q:Int, _ A:[Int], _ T:[Int], _ x:[Int], _ y:[Int]) {
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
    var A = [Int](repeating: 0, count: N)
    for i in 0..<N {
        A[i] = readInt()
    }
    var T = [Int](repeating: 0, count: Q)
    var x = [Int](repeating: 0, count: Q)
    var y = [Int](repeating: 0, count: Q)
    for i in 0..<Q {
        T[i] = readInt()
        x[i] = readInt()
        y[i] = readInt()
    }
    _ = solve(N, Q, A, T, x, y)
}

#if DEBUG
let caseNumber = 1
_ = freopen("in_\(caseNumber).txt", "r", stdin)
#endif

main()
