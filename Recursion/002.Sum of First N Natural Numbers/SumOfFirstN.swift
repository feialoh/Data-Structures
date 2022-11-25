//
//  SumOfFirstN
//
//  Created by Feialoh Francis on 23/11/22.
//

class SumOfFirstN {
    
    var num: Int64
    
    init(num: Int64) {
        self.num = num
    }
    
    func sumOfN(_ n: Int64) -> Int64 {
        
        if n == 1 {
            return 1
        }
        return n+sumOfN(n-1)
    }
}

print("Enter the limit: ")
let num = Int64(readLine() ?? "0")

if let num = num {
    let sol = SumOfFirstN(num: num)
    print("Sum of first \(num) number is = \(sol.sumOfN(num))")
}
