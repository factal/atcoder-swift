import Foundation


func solve(_ N:Int, _ lx:[Int], _ ly:[Int], _ rx:[Int], _ ry:[Int]) {
    var field = [[Int]](repeating: [Int](repeating: 0, count: 1001), count: 1001)

    for i in 0..<N {
        field[ly[i]][lx[i]] += 1
        field[ly[i]][rx[i]] -= 1
        field[ry[i]][lx[i]] -= 1
        field[ry[i]][rx[i]] += 1
    }

    for i in 0..<1000 {
        for j in 0..<1000 {
            field[i+1][j] += field[i][j]
        }
    }

    for i in 0..<1000 {
        for j in 0..<1000 {
            field[i][j+1] += field[i][j]
        }
    }

    var ans = [Int](repeating: 0, count: N+1)
    for i in 0..<1000 {
        for j in 0..<1000 {
            if field[i][j] < 0 {
                continue
            }
            ans[field[i][j]] += 1
        }
    }

    for i in 1...N {
        print(ans[i])
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
    var lx = [Int](repeating: 0, count: N)
    var ly = [Int](repeating: 0, count: N)
    var rx = [Int](repeating: 0, count: N)
    var ry = [Int](repeating: 0, count: N)
    for i in 0..<N {
        lx[i] = readInt()
        ly[i] = readInt()
        rx[i] = readInt()
        ry[i] = readInt()
    }
    _ = solve(N, lx, ly, rx, ry)
}

#if DEBUG
let caseNumber = 1
_ = freopen("in_\(caseNumber).txt", "r", stdin)
#endif

main()
