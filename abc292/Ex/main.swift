import Foundation


func solve(_ N:Int, _ B:Int, _ Q:Int, _ a:[Int], _ c:[Int], _ x:[Int]) {
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
    let B = readInt()
    let Q = readInt()
    var a = [Int](repeating: 0, count: N)
    for i in 0..<N {
        a[i] = readInt()
    }
    var c = [Int](repeating: 0, count: Q)
    var x = [Int](repeating: 0, count: Q)
    for i in 0..<Q {
        c[i] = readInt()
        x[i] = readInt()
    }
    _ = solve(N, B, Q, a, c, x)
}

#if DEBUG
let caseNumber = 1
_ = freopen("in_\(caseNumber).txt", "r", stdin)
#endif

main()
