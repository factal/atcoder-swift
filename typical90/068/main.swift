import Foundation


func solve(_ N:Int, _ Q:Int, _ T:[Int], _ X:[Int], _ Y:[Int], _ V:[Int]) {
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
    var T = [Int](repeating: 0, count: Q)
    var X = [Int](repeating: 0, count: Q)
    var Y = [Int](repeating: 0, count: Q)
    var V = [Int](repeating: 0, count: Q)
    for i in 0..<Q {
        T[i] = readInt()
        X[i] = readInt()
        Y[i] = readInt()
        V[i] = readInt()
    }
    _ = solve(N, Q, T, X, Y, V)
}

#if DEBUG
let caseNumber = 1
_ = freopen("in_\(caseNumber).txt", "r", stdin)
#endif

main()
