import Foundation


func solve(_ N:Int, _ K:Int, _ S:String) {
    var c_index = [[Int]](repeating: [Int](repeating: -1, count: N), count: 26)

    let str_array = Array(S)

    for i in (0..<N).reversed() {
        // let index = S.index(S.startIndex, offsetBy: i)
        let c = str_array[i]
        let c_int = Int(c.asciiValue!) - 97

        c_index[c_int][i] = i

        if i == 0 {
            break
        }

        for j in 0..<26 {
            let temp = c_index[j][i]
            c_index[j][i-1] = temp
        }
    }

    var ans = ""
    var curr = 0

    for i in 1...K {
        for j in 0..<26 {
            let next = c_index[j][curr]
            if next == -1 {
                continue
            }

            let remain = N - next - 1 + i
            if remain >= K {
                ans += String(UnicodeScalar(j + 97)!)
                curr = next + 1
                break
            }
        }
    }

    print(ans)

    // for i in 0..<26 {
    //     print(c_index[i])
    // }
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
    let K = readInt()
    let S = readString()
    _ = solve(N, K, S)
}

#if DEBUG
let caseNumber = 1
_ = freopen("in_\(caseNumber).txt", "r", stdin)
#endif

main()
