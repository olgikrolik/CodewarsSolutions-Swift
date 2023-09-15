
import Foundation

//Challenge 1
//Linked Lists - Append
//Write an Append() function which appends one linked list to another. The head of the resulting list should be returned.

class Node {
    var data: Int
    var next: Node?
    init(_ data: Int) {
        self.data = data
    }
}

func append(_ listA: Node?, _ listB: Node?) -> Node? {
    
    guard let listA = listA else {
        return listB
    }
    
    guard let listB = listB else {
        return listA
    }
    
    var headOfListA = listA
    var listALastNode = listA
    while listALastNode.next != nil {
        listALastNode = listALastNode.next!
    }
    
    listALastNode.next = listB
    
    return headOfListA
}

//Challenge 2
//Trolls are attacking your comment section!
//A common way to deal with this situation is to remove all of the vowels from the trolls' comments, neutralizing the threat.
//Your task is to write a function that takes a string and return a new string with all vowels removed.
//For example, the string "This website is for losers LOL!" would become "Ths wbst s fr lsrs LL!".
//Note: for this kata y isn't considered a vowel.

func disemvowel(_ s: String) -> String {
    var string = s
    let removeVowels: Array<Character> = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    string.removeAll(where: { removeVowels.contains($0) })
    return string
}

disemvowel("Hello there")

//Challenge 3
//Write a method that will search an array of strings for all strings that contain another string, ignoring capitalization. Then return an array of the found strings.
//The method takes two parameters, the query string and the array of strings to search, and returns an array.
//If the string isn't contained in any of the strings in the array, the method returns an array containing a single string: "Empty" (or Nothing in Haskell, or "None" in Python and C)
//Examples
//If the string to search for is "me", and the array to search is ["home", "milk", "Mercury", "fish"], the method should return ["home", "Mercury"].

func wordSearch(_ str:String, _ arr:[String]) -> [String] {
    let stringArray = arr
    let searchString = str
    let lowercasedStr = searchString.lowercased()
    
    var result: [String] = []
    
    for string in stringArray {
        if string.lowercased().contains(lowercasedStr) {
            result.append(string)
        }
    }
    if result.isEmpty {
        result.append("Empty")
    }
    return result
}

wordSearch("ap", ["Apple", "banana", "cherry", "mango", "guava"])

//Challenge 4
//We will call a natural number a "doubleton number" if it contains exactly two distinct digits. For example, 23, 35, 100, 12121 are doubleton numbers, and 123 and 9980 are not.
//For a given natural number n (from 1 to 1 000 000), you need to find the next doubleton number. If n itself is a doubleton, return the next bigger than n.

func doubleton(_ num: Int) -> Int {
    var n = num
    while Set(String(n+1)).count != 2 {
     n+=1
    }
    return n+1
}
doubleton(10)

//Challlenge 5
//An ordered sequence of numbers from 1 to N is given. One number might have deleted from it, then the remaining numbers were mixed. Find the number that was deleted.
//Example:
//The starting array sequence is [1,2,3,4,5,6,7,8,9]
//The mixed array with one deleted number is [3,2,4,6,7,8,1,9]
//Your function should return the int 5.
//If no number was deleted from the starting array, your function should return the int 0.

func findDeletedNumber(_ array: [Int], _ mixArray: [Int]) -> Int {
    var arrayToSet = Set(array)
    let mixArrayToSet = Set(mixArray)
    let difference = arrayToSet.subtracting(mixArrayToSet).first ?? 0
    //arrayToSet.subtract(mixArrayToSet)   // inna opcja odejmowania zbiorów(setów), powyżej tworzy się nowy set, tutaj modyfikuje się pierwszy
    return difference
    
//    let difference = arrayToSet.symmetricDifference(mixArrayToSet).first ?? 0  //druga opcja z funkcją .symmetricDifference
//    return difference
}

findDeletedNumber([1,2,3,4,5], [2,3,1,5,0])


//Challenge 6
//Write function replaceAll that will replace all occurrences of an item with another.
//Example: replaceAll [1,2,2] 1 2 -> in list [1,2,2] we replace 1 with 2 to get new list [2,2,2]

func replaceAll<T: Equatable>(array: [T], old: T, new: T) -> [T] {
    let newArray = array.map { $0 == old ? new : $0 }
    return newArray
}


replaceAll(array: [1,2,3,4], old: 2, new: 1)
