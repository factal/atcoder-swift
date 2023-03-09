import Foundation


func solve(_ H:Int, _ W:Int, _ A:[[Int]]) {
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
    let H = readInt()
    let W = readInt()
    var A = [[Int]](repeating: [Int](repeating: 0, count: W), count: H)
    for i in 0..<H {
        for j in 0..<W {
            A[i][j] = readInt()
        }
    }
    _ = solve(H, W, A)
}

#if DEBUG
let caseNumber = 1
_ = freopen("in_\(caseNumber).txt", "r", stdin)
#endif

main()
