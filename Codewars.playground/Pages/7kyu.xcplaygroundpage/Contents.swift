
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


