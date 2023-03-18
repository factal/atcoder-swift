import Foundation


func solve(_ N:Int, _ x:[Int]) {
    var x = x.sorted()
    var after_zero_idx = 0
    for i in 0..<N {
        if x[i] >= 0 {
            after_zero_idx = i
            break
        }
    }

    var costs = [Double]()

    for i in 0..<4 {
        for j in 0..<4 {
            for k in 0..<4 {
                    var first = 0
                var second = 0
                var third = 0

                var reserved_pos0 = 0
                var reserved_pos1 = after_zero_idx - 1
                var reserved_pos2 = after_zero_idx
                var reserved_pos3 = N-1

                switch i {
                case 0:
                    first = reserved_pos0
                    reserved_pos0 += 1
                case 1:
                    if reserved_pos1 < 0 {
                        continue
                    }
                    first = reserved_pos1
                    reserved_pos1 -= 1
                case 2:
                    if reserved_pos2 >= N {
                        continue
                    }
                    first = reserved_pos2
                    reserved_pos2 += 1
                case 3:
                    first = reserved_pos3
                    reserved_pos3 -= 1
                default:
                    continue
                }

                switch j {
                case 0:
                    second = reserved_pos0
                    reserved_pos0 += 1
                case 1:
                    if reserved_pos1 < 0 {
                        continue
                    }
                    second = reserved_pos1
                    reserved_pos1 -= 1
                case 2:
                    if reserved_pos2 >= N {
                        continue
                    }
                    second = reserved_pos2
                    reserved_pos2 += 1
                case 3:
                    second = reserved_pos3
                    reserved_pos3 -= 1
                default:
                    continue
                }

                switch k {
                case 0:
                    third = reserved_pos0
                    reserved_pos0 += 1
                case 1:
                    if reserved_pos1 < 0 {
                        continue
                    }
                    third = reserved_pos1
                    reserved_pos1 -= 1
                case 2:
                    if reserved_pos2 >= N {
                        continue
                    }
                    third = reserved_pos2
                    reserved_pos2 += 1
                case 3:
                    third = reserved_pos3
                    reserved_pos3 -= 1
                default:
                    continue
                }

                if first == second || second == third || third == first {
                    continue
                }

                let a = Double(x[first])
                let b = Double(x[second])
                let c = Double(x[third])

                costs.append((a + b + c) / (a * b * c))
            }


        }
    }

    let mi = costs.min()
    let ma = costs.max()

    if mi == nil || ma == nil {
        print(0)
    } else {
        print(mi!)
        print(ma!)
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
    var x = [Int](repeating: 0, count: N)
    for i in 0..<N {
        x[i] = readInt()
    }
    _ = solve(N, x)
}

#if DEBUG
let caseNumber = 1
_ = freopen("in_\(caseNumber).txt", "r", stdin)
#endif

main()
