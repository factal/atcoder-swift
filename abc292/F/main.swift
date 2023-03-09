import Foundation


func solve(_ A:Int, _ B:Int) {
    if A == B {
        print(Double(A) * (sqrt(6.0) - sqrt(2.0)))
        return
    }

    let max_len = max(A, B)
    let min_len = min(A, B)

    let diff = max_len - min_len
    let rect_tri = Double(min_len) * (sqrt(6.0) - sqrt(2.0))

    if Double(min_len) / sqrt(3.0) * 2.0 <= Double(max_len) {
        print(Double(min_len) / sqrt(3.0) * 2.0)
        return
    } else {
        let l = Double(max_len) / cos(atan(sqrt(3.0) - 2.0 * Double(min_len) / Double(max_len)))
        print(l)
        return
    }
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
    let A = readInt()
    let B = readInt()
    _ = solve(A, B)
}

#if DEBUG
let caseNumber = 1
_ = freopen("in_\(caseNumber).txt", "r", stdin)
#endif

main()
