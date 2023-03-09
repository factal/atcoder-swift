import Foundation


func solve(_ N:Int, _ W:[Int], _ B:[Int]) {
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
    var W = [Int](repeating: 0, count: N)
    for i in 0..<N {
        W[i] = readInt()
    }
    var B = [Int](repeating: 0, count: N)
    for i in 0..<N {
        B[i] = readInt()
    }
    _ = solve(N, W, B)
}

#if DEBUG
let caseNumber = 1
_ = freopen("in_\(caseNumber).txt", "r", stdin)
#endif

main()
