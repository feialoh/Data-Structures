//
//  Palindrome
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
        // palStr = String(palStr.filter { !" \n\t\r".contains($0) })
        palStr = palStr.filter { $0.isNumber || $0.isLetter }.lowercased()
        if palStr.isEmpty {
            return true
        }
        return helper(0, palStr.count-1, palStr)
    }

    func isPalindrome2(_ s: String) -> Bool {
        let filterdStr = s.filter { $0.isLetter || $0.isNumber }.lowercased()

        if filterdStr.isEmpty { return true}
        var startIndex = filterdStr.startIndex
        var endIndex: String.Index = filterdStr.index(before: filterdStr.endIndex)

        while (startIndex < endIndex) {
            if filterdStr[startIndex] != filterdStr[endIndex] {
                return false
            }
            startIndex = filterdStr.index(after: startIndex)
            endIndex = filterdStr.index(before: endIndex)
        }
        return true
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
