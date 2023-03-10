import Foundation


func solve(_ N:Int, _ L:Int, _ K:Int, _ A:[Int]) {
    func solve(_ m: Int) -> Bool {
        var cnt = 0
        var prev = 0
        for i in 0..<N {
            if A[i] - prev >= m && L - A[i] >= m {
                cnt += 1
                prev = A[i]
            }
        }
        if cnt >= K {
            return true
        }
        return false
    }

    var left = -1
    var right = L + 1

    while right - left > 1 {
        let mid = (left + right) / 2
        if solve(mid) {
            left = mid
        } else {
            right = mid
        }
    }

    print(left)
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
    let L = readInt()
    let K = readInt()
    var A = [Int](repeating: 0, count: N)
    for i in 0..<N {
        A[i] = readInt()
    }
    _ = solve(N, L, K, A)
}

#if DEBUG
let caseNumber = 1
_ = freopen("in_\(caseNumber).txt", "r", stdin)
#endif

main()
