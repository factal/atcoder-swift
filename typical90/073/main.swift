import Foundation

let MOD = 1000000007

func solve(_ N:Int, _ c:[String], _ a:[Int], _ b:[Int]) {
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
    var c = [String](repeating: "", count: N)
    for i in 0..<N {
        c[i] = readString()
    }
    var a = [Int](repeating: 0, count: N-1)
    var b = [Int](repeating: 0, count: N-1)
    for i in 0..<N-1 {
        a[i] = readInt()
        b[i] = readInt()
    }
    _ = solve(N, c, a, b)
}

#if DEBUG
let caseNumber = 1
_ = freopen("in_\(caseNumber).txt", "r", stdin)
#endif

main()
