import Foundation


func solve(_ N:Int, _ K:Int, _ A:[Int], _ B:[Int]) {
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
    let K = readInt()
    var A = [Int](repeating: 0, count: N)
    var B = [Int](repeating: 0, count: N)
    for i in 0..<N {
        A[i] = readInt()
        B[i] = readInt()
    }
    _ = solve(N, K, A, B)
}

#if DEBUG
let caseNumber = 1
_ = freopen("in_\(caseNumber).txt", "r", stdin)
#endif

main()
