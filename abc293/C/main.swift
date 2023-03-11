import Foundation


func solve(_ H:Int, _ W:Int, _ A:[[Int]]) {
    

    // generate all pathes form (0,0) to (H-1, W-1)
    var pathes = [[(Int, Int)]]()
    func dfs(_ i:Int, _ j:Int, _ path:[(Int, Int)]) {
        if i == H-1 && j == W-1 {
            pathes.append(path)
            return
        }
        if i < H-1 {
            dfs(i+1, j, path + [(i+1, j)])
        }
        if j < W-1 {
            dfs(i, j+1, path + [(i, j+1)])
        }
    }

    dfs(0, 0, [(0, 0)])


    var cnt = 0
    for p in pathes {
        var nums = Set<Int>()
        for cell in p {
            let num = A[cell.0][cell.1]
            nums.insert(num)
        }
        if nums.count == p.count {
            cnt += 1
        }
    }

    print(cnt)
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
    let H = readInt()
    let W = readInt()
    var A = [[Int]](repeating: [Int](repeating: 0, count: W), count: H)
    for i in 0..<H {
        for j in 0..<W {
            A[i][j] = readInt()
        }
    }
    _ = solve(H, W, A)
}

#if DEBUG
let caseNumber = 1
_ = freopen("in_\(caseNumber).txt", "r", stdin)
#endif

main()
