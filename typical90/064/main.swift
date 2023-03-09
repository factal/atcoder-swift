import Foundation


func solve(_ N:Int, _ Q:Int, _ A:[Int], _ L:[Int], _ R:[Int], _ V:[Int]) {
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
    var L = [Int](repeating: 0, count: Q)
    var R = [Int](repeating: 0, count: Q)
    var V = [Int](repeating: 0, count: Q)
    for i in 0..<Q {
        L[i] = readInt()
        R[i] = readInt()
        V[i] = readInt()
    }
    _ = solve(N, Q, A, L, R, V)
}

#if DEBUG
let caseNumber = 1
_ = freopen("in_\(caseNumber).txt", "r", stdin)
#endif

main()
