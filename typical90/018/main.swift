import Foundation


func solve(_ T:Int, _ L:Int, _ X:Int, _ Y:Int, _ Q:Int, _ E:[Int]) {
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
    let T = readInt()
    let L = readInt()
    let X = readInt()
    let Y = readInt()
    let Q = readInt()
    var E = [Int](repeating: 0, count: Q)
    for i in 0..<Q {
        E[i] = readInt()
    }
    _ = solve(T, L, X, Y, Q, E)
}

#if DEBUG
let caseNumber = 1
_ = freopen("in_\(caseNumber).txt", "r", stdin)
#endif

main()
