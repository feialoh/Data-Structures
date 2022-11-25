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
    
    func powerSet (_ i: Int = 0, _ subset: [Int] = [Int](), _ ans: [[Int]] = [[Int]]()) -> [[Int]] {
        var ans = ans
        var subset = subset
        if arr.count == i {
            ans.append(subset)
            return ans
        }
    
        subset.append(arr[i])
        ans = powerSet(i+1, subset, ans)
        subset.remove(at: subset.count-1)
        ans = powerSet(i+1, subset, ans)
        return ans
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
