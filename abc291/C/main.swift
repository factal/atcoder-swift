import Foundation

let YES = "Yes"
let NO = "No"

// prime factor decomposition with O(sqrt(n))
func pfd(_ n: Int) -> (Set<Int>, Set<Int>) {
    var n = n
    var res_one = Set<Int>()
    var res_two = Set<Int>()
    for i in 2...Int(sqrt(Double(n))) {
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
    return res
}

func solve(_ N:Int, _ S:String) {
    for i in 1...(n-1) {
        let a = i
        let b = n - i

        let a_pf = pfd(a)
        let b_pf = pfd(b)

        
    }
    print(ans ? YES : NO)
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
    let S = readString()
    _ = solve(N, S)
}

#if DEBUG
let caseNumber = 1
_ = freopen("in_\(caseNumber).txt", "r", stdin)
#endif

main()
