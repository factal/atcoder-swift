import Foundation


func solve(_ S:String) {
    let len = S.count
    var s = Array(S)

    for i in 0..<(len/2) {
        // swap s[i*2] and s[i*2+1] 
        let tmp = s[i*2]       
        s[i*2] = s[i*2+1]
        s[i*2+1] = tmp
    }

    print(String(s))
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
    let S = readString()
    _ = solve(S)
}

#if DEBUG
let caseNumber = 1
_ = freopen("in_\(caseNumber).txt", "r", stdin)
#endif

main()
