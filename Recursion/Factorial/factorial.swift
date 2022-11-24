//
//  main.swift
//  Factorial
//
//  Created by Feialoh Francis on 23/11/22.
//

import Foundation

class Factorial {
    
    var num: Int64
    
    init(num: Int64) {
        self.num = num
    }
    
    func factorial(_ n: Int64) -> Int64 {
        
        if n == 0 {
            return 1
        }
        return n*factorial(n-1)
    }
}

print("Enter a number: ")
let num = Int64(readLine() ?? "0")

if let num = num {
    let sol = Factorial(num: num)
    print("\(num)! = \(sol.factorial(num))")
}
