import Foundation


func solve(_ N:Int, _ C:[Int], _ P:[Int], _ Q:Int, _ L:[Int], _ R:[Int]) {
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
    var C = [Int](repeating: 0, count: N)
    var P = [Int](repeating: 0, count: N)
    for i in 0..<N {
        C[i] = readInt()
        P[i] = readInt()
    }
    let Q = readInt()
    var L = [Int](repeating: 0, count: Q)
    var R = [Int](repeating: 0, count: Q)
    for i in 0..<Q {
        L[i] = readInt()
        R[i] = readInt()
    }
    _ = solve(N, C, P, Q, L, R)
}

#if DEBUG
let caseNumber = 1
_ = freopen("in_\(caseNumber).txt", "r", stdin)
#endif

main()
