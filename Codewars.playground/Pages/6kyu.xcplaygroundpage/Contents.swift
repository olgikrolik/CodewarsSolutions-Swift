
import Foundation

//Challange 1 Find the odd int https://www.codewars.com/kata/54da5a58ea159efa38000836
//Given an array of integers, find the one that appears an odd number of times.
//There will always be only one integer that appears an odd number of times.

findIt([1, 1, 0, 3, 3, 5, 5, 1, 1])

func findIt(_ seq: [Int]) -> Int {
    var dictionary = [Int: Int]()
    
    for integer in seq {
        let value = dictionary[integer]
        if let value = dictionary[integer] {
            dictionary[integer] = value + 1
        } else {
            dictionary[integer] = 1
        }
    }
    
    let selectedDictionary = dictionary.filter { $0.value % 2 != 0 }
    let selectedKeys = selectedDictionary.map { $0.key }
    return selectedKeys[0]
}

