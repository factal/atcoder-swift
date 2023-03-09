import Foundation


func solve(_ N:Int, _ lx:[Int], _ ly:[Int], _ rx:[Int], _ ry:[Int]) {
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
    var lx = [Int](repeating: 0, count: N)
    var ly = [Int](repeating: 0, count: N)
    var rx = [Int](repeating: 0, count: N)
    var ry = [Int](repeating: 0, count: N)
    for i in 0..<N {
        lx[i] = readInt()
        ly[i] = readInt()
        rx[i] = readInt()
        ry[i] = readInt()
    }
    _ = solve(N, lx, ly, rx, ry)
}

#if DEBUG
let caseNumber = 1
_ = freopen("in_\(caseNumber).txt", "r", stdin)
#endif

main()
