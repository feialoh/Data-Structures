//
//  main.swift
//  Factorial
//
//  Created by Feialoh Francis on 23/11/22.
//

import Foundation

class Palindrome {
    
    var str: String
    
    init(str: String) {
        self.str = str
    }
    
    func helper(_ l: Int, _ r: Int, _ str: String) -> Bool {
        
        if l >= r {
            return true
        }
        
        if str[l] != str[r] {
            return false
        }
        
        return helper(l+1, r-1, str)
    }
    
    func isPalindrome(_ string: String) -> Bool {
        
        var palStr = string.lowercased()
        palStr = String(palStr.filter { !" \n\t\r".contains($0) })
        if palStr.isEmpty {
            return true
        }
        return helper(0, palStr.count-1, palStr)
    }
}

print("Enter the string: ")
let str = readLine()

if let str = str {
    let sol = Palindrome(str: str)
    print("\(str) is \(sol.isPalindrome(str) ? "palindrome" : "not palindrome")")
}


extension StringProtocol {
    subscript(offset: Int) -> Character {
        self[index(startIndex, offsetBy: offset)]
    }
}
