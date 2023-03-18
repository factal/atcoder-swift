import Foundation


func solve(_ N:Int, _ X:[Int], _ Y:[Int]) {
    var ans = 0
    let H = 1
let W = 1000000

var arr = [[Int]](repeating: [Int](repeating: 0, count: W), count: H)

for i in 0..<H {
    for j in 0..<W {
        arr[i][j] = arr[i][j]
    }
}

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
    var X = [Int](repeating: 0, count: N)
    var Y = [Int](repeating: 0, count: N)
    for i in 0..<N {
        X[i] = readInt()
        Y[i] = readInt()
    }
    _ = solve(N, X, Y)
}

#if DEBUG
let caseNumber = 1
_ = freopen("in_\(caseNumber).txt", "r", stdin)
#endif

main()
