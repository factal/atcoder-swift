import Foundation


func solve(_ N:Int) {
    var ans: [Int] = []

    // bit search
    for i in 0..<(1<<N) {
        var cnt = 0
        for j in 0..<N {
            if cnt < 0 {
                break
            }
            if (i >> j) & 1 == 1 {
                cnt += 1
            } else {
                cnt -= 1
            }
        }
        
        if cnt != 0 {
            continue
        } else {
            ans.append(i)
        }
    }

    for i in 0..<ans.count {
        var s = ""
        for j in 0..<N {
            if (ans[i] >> j) & 1 == 1 {
                s += ")"
            } else {
                s += "("
            }
        }
        print(String(s.reversed()))
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
    _ = solve(N)
}

#if DEBUG
let caseNumber = 1
_ = freopen("in_\(caseNumber).txt", "r", stdin)
#endif

main()
