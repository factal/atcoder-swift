import Foundation


func solve(_ N:Int, _ M:Int, _ C:[Int], _ L:[Int], _ R:[Int]) {
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
    var C = [Int](repeating: 0, count: M)
    var L = [Int](repeating: 0, count: M)
    var R = [Int](repeating: 0, count: M)
    for i in 0..<M {
        C[i] = readInt()
        L[i] = readInt()
        R[i] = readInt()
    }
    _ = solve(N, M, C, L, R)
}

#if DEBUG
let caseNumber = 1
_ = freopen("in_\(caseNumber).txt", "r", stdin)
#endif

main()
