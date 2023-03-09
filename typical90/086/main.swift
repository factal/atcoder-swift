import Foundation

let MOD = 1000000007

func solve(_ N:Int, _ Q:Int, _ x:[Int], _ y:[Int], _ z:[Int], _ w:[Int]) {
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
    var x = [Int](repeating: 0, count: Q)
    var y = [Int](repeating: 0, count: Q)
    var z = [Int](repeating: 0, count: Q)
    var w = [Int](repeating: 0, count: Q)
    for i in 0..<Q {
        x[i] = readInt()
        y[i] = readInt()
        z[i] = readInt()
        w[i] = readInt()
    }
    _ = solve(N, Q, x, y, z, w)
}

#if DEBUG
let caseNumber = 1
_ = freopen("in_\(caseNumber).txt", "r", stdin)
#endif

main()
