import Foundation


func solve(_ N:Int, _ M:Int, _ A:[Int], _ B:[Int]) {
    let n = 10

    let w = 10000000
        var arr = [[Int]](repeating: [Int](repeating: 0, count: w), count: n)


    for i in (0..<n).reversed() {
        if i == 0 {
            break
        }
        for j in 0..<w {
            arr[i-1][j] = arr[i][j]
        }
    }


    // for i in 0..<n {
    //     if i == 0 {
    //         continue
    //     }
        
    //     for j in 0..<w {
    //         let temp = arr[j][i-1]
    //         arr[j][i] = temp
    //     }
    // }

    // var arr = [Int](repeating: 0, count: n)

    // for i in 0..<n {
    //     if i == n-1 {
    //         break
    //     }
    //     arr[i+1] = arr[i]
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
    let M = readInt()
    var A = [Int](repeating: 0, count: N)
    for i in 0..<N {
        A[i] = readInt()
    }
    var B = [Int](repeating: 0, count: M)
    for i in 0..<M {
        B[i] = readInt()
    }
    _ = solve(N, M, A, B)
}

#if DEBUG
let caseNumber = 1
_ = freopen("in_\(caseNumber).txt", "r", stdin)
#endif

main()
