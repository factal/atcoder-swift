import Foundation


func solve(_ N:Int, _ M:Int, _ a:[Int], _ b:[Int]) {
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
    let M = readInt()
    var a = [Int](repeating: 0, count: M)
    var b = [Int](repeating: 0, count: M)
    for i in 0..<M {
        a[i] = readInt()
        b[i] = readInt()
    }
    _ = solve(N, M, a, b)
}

#if DEBUG
let caseNumber = 1
_ = freopen("in_\(caseNumber).txt", "r", stdin)
#endif

main()
