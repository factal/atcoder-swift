import Foundation


func solve(_ N:Int, _ A:[Int]) {
    let all = Set(1...N)
    var called = Set<Int>()

    for i in 0..<N {
        if called.contains(i+1) == false {
            called.insert(A[i])
        }
    }

    let uncalled = all.subtracting(called)
    var uncalled_arr = Array(uncalled)

    uncalled_arr.sort()

    print(uncalled_arr.count)

    // print in a line
    for i in uncalled_arr {
        print(i, terminator: " ")
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
    _ = solve(N, A)
}

#if DEBUG
let caseNumber = 1
_ = freopen("in_\(caseNumber).txt", "r", stdin)
#endif

main()
