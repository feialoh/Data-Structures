//
//  ReverseArray
//
//  Created by Feialoh Francis on 23/11/22.
//

import Foundation

class Reverse {
    
    var num: Int
    var arr: [Int]
    
    init(num: Int, arr: [Int]) {
        self.num = num
        self.arr = arr
    }
    
    func reverse(_ l: Int, _ r: Int) -> [Int] {
        var arr = self.arr
        if l > r {
            return arr
        }
        arr.swapAt(l, r)
        self.arr = arr
        return reverse(l+1, r-1)
    }
    
    func reverseArray(_ pos: Int) -> [Int] {
        return reverse(0, self.arr.count-1)
    }
}

var arr = [Int]()
print("Enter number of elements to be entered: ")
let num = Int(readLine() ?? "0")

if let num = num {
    for i in 0...num-1 {
        print("Enter number \(i+1): ")
        let value = Int(readLine() ?? "0")
        if let element = value {
            arr.append(element)
        }
    }
    
    print("Array before: \(arr)")
    let sol = Reverse(num: num, arr: arr)
    arr = sol.reverseArray(0)
    print("Array after: \(arr)")
}
