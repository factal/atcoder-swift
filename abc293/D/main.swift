import Foundation


func solve(_ N:Int, _ M:Int, _ A:[Int], _ B:[String], _ C:[Int], _ D:[String]) {
    var cnt = 0
    var parent = [Int](repeating: 0, count: 2*N)

    for i in 0..<2*N {
        parent[i] = i
    }

    func find(_ x:Int) -> Int {
        if parent[x] == x {
            return x
        } else {
            parent[x] = find(parent[x])
            return parent[x]
        }
    }

    func unite(_ x:Int, _ y:Int) {
        let root_x = find(x)
        let root_y = find(y)
        if root_x == root_y {
            cnt += 1
            return
        }
        parent[root_x] = root_y
    }

    for i in 0..<N {
        unite(i, i+N)
    }

    for i in 0..<M {
        let a = A[i]
        let c = C[i]
        var color_a = 0
        var color_c = 0
        if B[i] == "B" {
            color_a = 1
        }
        if D[i] == "B" {
            color_c = 1
        }
        unite(c-1 + color_c * N, a-1 + color_a * N)
    }

    var root = Set<Int>()
    for i in 0..<2*N {
        root.insert(find(i))
    }
    
    print(cnt, root.count - cnt)
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
    var A = [Int](repeating: 0, count: M)
    var B = [String](repeating: "", count: M)
    var C = [Int](repeating: 0, count: M)
    var D = [String](repeating: "", count: M)
    for i in 0..<M {
        A[i] = readInt()
        B[i] = readString()
        C[i] = readInt()
        D[i] = readString()
    }
    _ = solve(N, M, A, B, C, D)
}

#if DEBUG
let caseNumber = 1
_ = freopen("in_\(caseNumber).txt", "r", stdin)
#endif

main()
