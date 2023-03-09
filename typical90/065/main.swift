import Foundation

let MOD = 998244353

func solve(_ R:Int, _ G:Int, _ B:Int, _ K:Int, _ X:Int, _ Y:Int, _ Z:Int) {
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
    let R = readInt()
    let G = readInt()
    let B = readInt()
    let K = readInt()
    let X = readInt()
    let Y = readInt()
    let Z = readInt()
    _ = solve(R, G, B, K, X, Y, Z)
}

#if DEBUG
let caseNumber = 1
_ = freopen("in_\(caseNumber).txt", "r", stdin)
#endif

main()
