//
//  Power
//
//  Created by Feialoh Francis on 23/11/22.
//

import Foundation

class Power {
    
    var num: Double
    var pow: Int
    
    init(num: Double, pow: Int) {
        self.num = num
        self.pow = pow
    }
    
    func power() -> Double {
        
        var num = self.num
        var pow = self.pow
        
        if pow == 0 {
            return 1
        }
        
        if pow < 0 {
            num = 1/num
            pow = abs(pow)
        }
        
        self.pow = pow/2
        let temp = self.power()
        
        if pow % 2 == 1 {
            return temp * temp * num
        } else {
            return temp * temp
        }
    }
}

print("Enter number: ")
let num = Double(readLine() ?? "0")

print("Enter power: ")
let pow = Int(readLine() ?? "0")

if let num = num, let pow = pow {
    let sol = Power(num: num, pow: pow)
    print("\(Int(num)) ^ \(pow) = \(sol.power())")
}

