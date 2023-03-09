import Foundation

let YES = "Yes"
let NO = "No"

func solve(_ N:Int, _ M:Int, _ Q:Int, _ X:[Int], _ Y:[Int], _ A:[Int], _ B:[Int]) {
    var ans = false

    print(ans ? YES : NO)
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
    let Q = readInt()
    var X = [Int](repeating: 0, count: M)
    var Y = [Int](repeating: 0, count: M)
    for i in 0..<M {
        X[i] = readInt()
        Y[i] = readInt()
    }
    var A = [Int](repeating: 0, count: Q)
    var B = [Int](repeating: 0, count: Q)
    for i in 0..<Q {
        A[i] = readInt()
        B[i] = readInt()
    }
    _ = solve(N, M, Q, X, Y, A, B)
}

#if DEBUG
let caseNumber = 1
_ = freopen("in_\(caseNumber).txt", "r", stdin)
#endif

main()
