import Foundation


func solve(_ N:Int, _ A:[Int]) {
    var ans = 0
    var cnt = [Int](repeating: 0, count: N+1)

    for x in A {
        cnt[x] += 1
    }

    for i in 0..<((N+1) / 2) {
        let l = A[i]
        let r = A[N-1-i]
        ans += (N - 2*i - cnt[l]) * (i + 1)
        ans += (N - 2*i - cnt[r]) * (i + 1)

        if l != r {
            ans -= (i + 1)
        }

        cnt[l] -= 1
        cnt[r] -= 1
    }

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
    var A = [Int](repeating: 0, count: N)
    for i in 0..<N {
        A[i] = readInt()
    }
    _ = solve(N, A)
}

#if DEBUG
let caseNumber = 1
_ = freopen("in_\(caseNumber).txt", "r", stdin)
#endif

main()
