import Foundation

let YES = "Yes"
let NO = "No"

func solve(_ N:Int, _ T:Int, _ AX:[Int], _ AY:[Int], _ BX:[Int], _ BY:[Int]) {
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
    let T = readInt()
    var AX = [Int](repeating: 0, count: N)
    var AY = [Int](repeating: 0, count: N)
    for i in 0..<N {
        AX[i] = readInt()
        AY[i] = readInt()
    }
    var BX = [Int](repeating: 0, count: N)
    var BY = [Int](repeating: 0, count: N)
    for i in 0..<N {
        BX[i] = readInt()
        BY[i] = readInt()
    }
    _ = solve(N, T, AX, AY, BX, BY)
}

#if DEBUG
let caseNumber = 1
_ = freopen("in_\(caseNumber).txt", "r", stdin)
#endif

main()
