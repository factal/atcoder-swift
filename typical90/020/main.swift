import Foundation

let YES = "Yes"
let NO = "No"

func solve(_ a:Int, _ b:Int, _ c:Int) {
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
    let a = readInt()
    let b = readInt()
    let c = readInt()
    _ = solve(a, b, c)
}

#if DEBUG
let caseNumber = 1
_ = freopen("in_\(caseNumber).txt", "r", stdin)
#endif

main()
