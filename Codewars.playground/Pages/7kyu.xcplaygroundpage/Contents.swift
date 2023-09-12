
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


