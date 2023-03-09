import Foundation

let MOD = 1000000007

func solve(_ N:Int, _ B:Int, _ K:Int, _ c:[Int]) {
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
    let K = readInt()
    var c = [Int](repeating: 0, count: K)
    for i in 0..<K {
        c[i] = readInt()
    }
    _ = solve(N, B, K, c)
}

#if DEBUG
let caseNumber = 1
_ = freopen("in_\(caseNumber).txt", "r", stdin)
#endif

main()
