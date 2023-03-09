import Foundation


func pfd(_ n: Int) -> (Set<Int>, Set<Int>) {
    var n = n
    var res_one = Set<Int>()
    var res_two = Set<Int>()
    for i in 2...Int(ceil(sqrt(Double(n))) + 10) {
        while n % i == 0 {
            if res_one.contains(i) {
                res_two.insert(i)
            } else {
                res_one.insert(i)
            }
            n /= i
        }
    }
    if n != 1 {
        if res_one.contains(n) {
            res_two.insert(n)
        } else {
            res_one.insert(n)
        }
    }

    res_one.insert(1)
    return (res_one, res_two)
}

func solve(_ N:Int) {
    var ans = 0

    for i in 1...(N-1) {
        let a = i
        let b = N - i

        let a_pf = pfd(a)
        let b_pf = pfd(b)

        print(a_pf)

        ans += a_pf.0.count * (a_pf.0.count - 1) / 2 + a_pf.1.count + b_pf.0.count * (b_pf.0.count - 1) / 2 + b_pf.1.count
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
    _ = solve(N)
}

#if DEBUG
let caseNumber = 1
_ = freopen("in_\(caseNumber).txt", "r", stdin)
#endif

main()
