import Foundation


func solve(_ N: Int, _ S: [String]) {
    var registerd = Set<String>()
    var accept_date = [Int]()

    for i in 0..<N {
        if registerd.contains(S[i]) == false {
            registerd.insert(S[i])
            accept_date.append(i + 1)
        }
    }

    for i in 0..<accept_date.count {
        print(accept_date[i])
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
    let N = readInt()
    var S = [String](repeating: "", count: N)
    for i in 0..<N {
        S[i] = readString()
    }
    _ = solve(N, S)
}

#if DEBUG
let caseNumber = 1
_ = freopen("in_\(caseNumber).txt", "r", stdin)
#endif

main()
