//
//  PowerSet
//
//  Created by Feialoh Francis on 23/11/22.
//

import Foundation

class PowerSet {
    
    var arr: [Int]
    
    init(arr: [Int]) {
        self.arr = arr
    }
    
    func helper (_ i: Int, _ subset: [Int], _ ans: [[Int]]) -> [[Int]] {
        var ans = ans
        var subset = subset
        if arr.count == i {
            ans.append(subset)
            return ans
        }
    
        subset.append(arr[i])
        ans = helper(i+1, subset, ans)
        subset.remove(at: subset.count-1)
        ans = helper(i+1, subset, ans)
        return ans
    }
    
    func powerSet() ->  [[Int]] {
        return helper(0, [Int](), [[Int]]())
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

var powerSet = [[Int]]()
var arr = [Int]()
print("Enter number of elements in power set: ")
let num = Int(readLine() ?? "0")

if let num = num {
    for i in 0...num-1 {
        print("Enter number \(i+1): ")
        let value = Int(readLine() ?? "0")
        if let element = value {
            arr.append(element)
        }
    }
    
    print("Array elements: \(arr)")
    let sol = PowerSet(arr: arr)
    powerSet = sol.powerSet()
    print("Power set: \(powerSet)")
}
