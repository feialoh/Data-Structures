//
//  Permutation
//
//  Created by Feialoh Francis on 23/11/22.
//

import Foundation

class Permutation {
    
    var str: String
    
    init(str: String) {
        self.str = str
    }
    
    func permuations (_ pos: Int = 0, _ ans: [String] = [String]()) -> [String] {
        var ans = ans
        var str = str
        if pos >= str.count {
            ans.append(str)
        }
        
        for i in pos..<str.count {
            str.swapAt(i, pos)
            self.str = str
            ans = permuations(pos+1, ans)
            str.swapAt(i, pos)
        }
        return ans
    }
}

var allString = [String]()
print("Enter the string:")
let str = readLine()

if let str = str {
    print("Possible permutations are: ")
    let sol = Permutation(str: str)
    allString = sol.permuations()
    print(allString)
}


extension String {
    mutating func swapAt(_ index1: Int, _ index2: Int) {
        var characters = Array(self)
        characters.swapAt(index1, index2)
        self = String(characters)
    }
}
