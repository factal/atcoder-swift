import Foundation


func solve(_ N:Int, _ D:[Int], _ C:[Int], _ S:[Int]) {
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
    var D = [Int](repeating: 0, count: N)
    var C = [Int](repeating: 0, count: N)
    var S = [Int](repeating: 0, count: N)
    for i in 0..<N {
        D[i] = readInt()
        C[i] = readInt()
        S[i] = readInt()
    }
    _ = solve(N, D, C, S)
}

#if DEBUG
let caseNumber = 1
_ = freopen("in_\(caseNumber).txt", "r", stdin)
#endif

main()
