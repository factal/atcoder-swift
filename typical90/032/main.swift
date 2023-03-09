import Foundation


func solve(_ N:Int, _ A:[[Int]], _ M:Int, _ X:[Int], _ Y:[Int]) {
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
    var A = [[Int]](repeating: [Int](repeating: 0, count: N), count: N)
    for i in 0..<N {
        for j in 0..<N {
            A[i][j] = readInt()
        }
    }
    let M = readInt()
    var X = [Int](repeating: 0, count: M)
    var Y = [Int](repeating: 0, count: M)
    for i in 0..<M {
        X[i] = readInt()
        Y[i] = readInt()
    }
    _ = solve(N, A, M, X, Y)
}

#if DEBUG
let caseNumber = 1
_ = freopen("in_\(caseNumber).txt", "r", stdin)
#endif

main()
