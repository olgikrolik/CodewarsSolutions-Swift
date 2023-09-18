
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

//Challenge 7
//Create a function that returns the sum of the two lowest positive numbers given an array of minimum 4 positive integers. No floats or non-positive integers will be passed.
//For example, when an array is passed like [19, 5, 42, 2, 77], the output should be 7.
//[10, 343445353, 3453445, 3453545353453] should return 3453455.

func sumOfTwoSmallestIntegersIn(_ array: [Int]) -> Int {
    var sortedArray = array
    sortedArray.sort()
    let sum = sortedArray[0] + sortedArray[1]
    return sum
}

sumOfTwoSmallestIntegersIn([3,2,5,1])

//Challenge 8
//Create a function oddOne that takes an [Int] as input and outputs the index at which the sole odd number is located.
//This method should work with arrays with negative numbers. If there are no odd numbers in the array, then the method should output nil.

func oddOne(_ arr: [Int]) -> Int? {
    var array = arr
    if let indexWithOddNumber = array.firstIndex(where: { $0 % 2 != 0 }) {
        return indexWithOddNumber
    } else {
        return nil
    }
    
// return arr.firstIndex(where: { $0 % 2 != 0 }) //druga opcja zapisu
}

oddOne([2,4,6,8,2])


//Challenge 9
//Strong number is the number that the sum of the factorial of its digits is equal to number itself.
//For example, 145 is strong, since 1! + 4! + 5! = 1 + 24 + 120 = 145.
//Task
//Given a number, Find if it is Strong or not and return either "STRONG!!!!" or "Not Strong !!".
//Notes
//Number passed is always Positive.
//Return the result as String

func strongNumber(_ number: Int) -> String {
    let numberToArray = String(number).compactMap { Int(String($0)) }
    var arrayOfFactorial: [Int] = []
    for digit in numberToArray {
        var result = 1
        if digit != 0 {
            for i in 1...digit {
                result *= i
            }
        } else {
            result = 1
        }
        arrayOfFactorial.append(result)
    }
    let strongNumber = arrayOfFactorial.reduce(0, +)
    
    if strongNumber == number {
        return "STRONG!!!!"
    } else {
        return "Not Strong !!"
    }
}

strongNumber(145)


//Challenge 10
//In a factory a printer prints labels for boxes. For one kind of boxes the printer has to use colors which, for the sake of simplicity, are named with letters from a to m.
//The colors used by the printer are recorded in a control string. For example a "good" control string would be aaabbbbhaijjjm meaning that the printer used three times color a, four times color b, one time color h then one time color a...
//Sometimes there are problems: lack of colors, technical malfunction and a "bad" control string is produced e.g. aaaxbbbbyyhwawiwjjjwwm with letters not from a to m.
//You have to write a function printer_error which given a string will return the error rate of the printer as a string representing a rational whose numerator is the number of errors and the denominator the length of the control string. Don't reduce this fraction to a simpler expression.
//The string has a length greater or equal to one and contains only letters from ato z.

func printerError(_ s: String) -> String {
    let controlStringLenght = s.count
    var errorCount = 0
    let sToArray = s.map { String($0) }
    for letter in sToArray {
        if letter >= "n" && letter <= "z" {
            errorCount += 1
        }
    }
    return "\(errorCount)/\(controlStringLenght)"
}

printerError("aaabbbbhaijjjm")
