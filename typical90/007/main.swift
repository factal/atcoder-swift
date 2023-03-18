import Foundation


func solve(_ N:Int, _ A:[Int], _ Q:Int, _ B:[Int]) {
    var aIntervals = [Int](repeating: 0, count: Q)

    var A = A
    A.sort()

    for (i, b) in B.enumerated() {
        var l = 0, r = N
        while r - l > 1 {
            let mid = (l + r) / 2
            if A[mid] <= b {
                l = mid
            } else {
                r = mid
            }
        }
        aIntervals[i] = l + 1
    }

    for (b, a) in aIntervals.enumerated() {
        if a == 0 {
            print(abs(A[a] - B[b]))
        } else if a == N {
            print(abs(A[a-1] - B[b]))
        } else {
            print(min(abs(A[a-1] - B[b]), abs(A[a] - B[b])))
        }
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
    var A = [Int](repeating: 0, count: N)
    for i in 0..<N {
        A[i] = readInt()
    }
    let Q = readInt()
    var B = [Int](repeating: 0, count: Q)
    for i in 0..<Q {
        B[i] = readInt()
    }
    _ = solve(N, A, Q, B)
}

#if DEBUG
let caseNumber = 1
_ = freopen("in_\(caseNumber).txt", "r", stdin)
#endif

main()
