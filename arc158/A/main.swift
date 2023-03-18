import Foundation

// Finding special solutions to linear indeterminate equation ax + by = gcd(a, b) (a, b are integers)

func find(_ a:Int, _ b:Int) -> (Int, Int) {
    var (x, y) = (0, 1)
    var (lastx, lasty) = (1, 0)
    var (q, r) = (0, 0)
    var (m, n) = (a, b)
    while n != 0 {
        q = m / n
        r = m % n
        (m, n) = (n, r)
        (x, lastx) = (lastx - q * x, x)
        (y, lasty) = (lasty - q * y, y)
    }
    return (lastx, lasty)
}

func solve(_ T:Int, _ cases:[(Int, Int, Int)]) {
    for i in 0..<T {
        let q = cases[i]
        var (kl, m) = find(2, -4)
        kl *= (q.0 - q.1) / 2 * (-1)
        m *= (q.0 - q.1) / 2 * (-1)
        var (mk, l) = find(2, -4)
        mk *= (q.1 - q.2) / 2 * (-1)
        l *= (q.1 - q.2) / 2 * (-1)
        var (lm, k) = find(2, -4)
        lm *= (q.2 - q.0) / 2 * (-1)
        k *= (q.2 - q.0) / 2 * (-1)

        let sum1 = kl + lm + mk
        let sum2 = k + l + m
        print(kl, lm, mk, k, l, m, sum1, sum2)
    }
    // print(find(2, 3))
}

func main() {
    // Failed to predict input format
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

    let T = readInt()

    var cases: [(Int, Int, Int)] = []
    for _ in 0..<T {
        let q1 = readInt()
        let q2 = readInt()
        let q3 = readInt()
        cases.append((q1, q2, q3))
    }

    solve(T, cases)
}

#if DEBUG
let caseNumber = 1
_ = freopen("in_\(caseNumber).txt", "r", stdin)
#endif

main()
