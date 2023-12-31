import UIKit

//Challenge 1 Beginner Series #2 Clock https://www.codewars.com/kata/55f9bca8ecaa9eac7100004a
//Clock shows h hours, m minutes and s seconds after midnight.
//Your task is to write a function which returns the time since midnight in milliseconds.

func past(_ h: Int, _ m: Int, _ s: Int) -> Int {
    
   let hoursToMilliseconds = h * 3600000
   let minutesToMilliseconds = m * 60000
   let secondsToMilliseconds = s * 1000

   return hoursToMilliseconds + minutesToMilliseconds + secondsToMilliseconds
}


past(2, 30, 22)



//Challenge 2 Transportation on vacation https://www.codewars.com/kata/568d0dd208ee69389d000016
//After a hard quarter in the office you decide to get some rest on a vacation. So you will book a flight for you and your girlfriend and try to leave all the mess behind you.
//You will need a rental car in order for you to get around in your vacation. The manager of the car rental makes you some good offers.
//Every day you rent the car costs $40. If you rent the car for 7 or more days, you get $50 off your total. Alternatively, if you rent the car for 3 or more days, you get $20 off your total.
//Write a code that gives out the total amount for different days(d).

func RentalCarCost(_ days: Int) -> Int {
    
    let rentCost = days * 40
    if days < 3 {
        return rentCost
    } else if days >= 3 && days < 7 {
        return (rentCost) - 20
    } else {
        return (rentCost) - 50
    }
}

RentalCarCost(7)



//Challenge 3 Function 1 - hello world https://www.codewars.com/kata/523b4ff7adca849afe000035
//Make a simple function called greet that returns the most-famous "hello world!".
//Style Points
//Sure, this is about as easy as it gets. But how clever can you be to create the most creative "hello world" you can think of? What is a "hello world" solution you would want to show your friends?

func greet() -> String {
    let greeting = "hello world!"
    return greeting
}

greet()



//Challenge 4 Convert a Boolean to a String https://www.codewars.com/kata/551b4501ac0447318f0009cd
//Implement a function which convert the given boolean value into its string representation.
//Note: Only valid inputs will be given.

func booleanToString(_ b: Bool) -> String {
  return String(b)
}

booleanToString(true)


//Challenge 5 Returning Strings https://www.codewars.com/kata/55a70521798b14d4750000a4
//Make a function that will return a greeting statement that uses an input; your program should return, "Hello, <name> how are you doing today?".
//[Make sure you type the exact thing I wrote or the program may not execute properly]

func greet(_ name: String) -> String {
  return "Hello, \(name) how are you doing today?"
}
greet("Olga")


//Challenge 6 Grasshopper - Check for factor https://www.codewars.com/kata/55cbc3586671f6aa070000fb
//This function should test if the factor is a factor of base.
//Return true if it is a factor or false if it is not.

func checkForFactor(_ base: Int, _ factor: Int) -> Bool {
    return base % factor == 0 ? true : false
}

checkForFactor(9, 2)

//Challenge 7 Convert number to reversed array of digits https://www.codewars.com/kata/5583090cbe83f4fd8c000051
//Given a random non-negative number, you have to return the digits of this number within an array in reverse order.

func digitize(_ num:Int) -> [Int] {
    let numbers = num
    let numArray = String(numbers).compactMap { Int(String($0)) }
    return numArray.reversed()
}

digitize(12345)

//Challenge 8 Convert a Number to a String! https://www.codewars.com/kata/5265326f5fda8eb1160004c8
//We need a function that can transform a number (integer) into a string.
//What ways of achieving this do you know?

func numberToString(number: Int) -> String {
    return String(number)
}

numberToString(number: 55)

//Challenge 9
//This is an easy twist to the example kata (provided by Codewars when learning how to create your own kata).
//Add the value "codewars" to the array websites 1,000 times.

let websites = Array(repeating: "codewars", count: 1000)

//Challenge 10 Enumerable Magic #25 - Take the First N Elements https://www.codewars.com/kata/545afd0761aa4c3055001386
//Create a function take that takes an Array<Int> and an Int, n, and returns an Array<Int> containing the first up to n elements from the array.

func take(_ arr: [Int], _ n: Int) -> [Int] {
    var newArray: [Int] = []
    
    if arr.count < n {
        return arr
    }
    
    for index in 0...n {
        newArray.append(arr[index])
    }
        
    return newArray
}
take([1,2,3,5,6,7,9], 4)

//2nd solution
//func take(_ arr: [Int], _ n: Int) -> [Int] {
//
//    if arr.count < n {
//        return arr
//    } else {
//        return Array(arr[0..<n])
//    }
//}


//Challenge 11 Reversed Strings https://www.codewars.com/kata/5168bb5dfe9a00b126000018
//Complete the solution so that it reverses the string passed into it.

func reverse(_ str: String) -> String {
    let arrayOfString = str.compactMap { String($0) }
    let reversedString = arrayOfString.reversed()
    return reversedString.reduce("", +)
    
//2nd option
//let reversedString = String(str.reversed())
//return reversedString
}

reverse("world")

//Challenge 12 Even or Odd https://www.codewars.com/kata/53da3dbb4a5168369a0000fe
//Create a function that takes an integer as an argument and returns "Even" for even numbers or "Odd" for odd numbers.

func evenOrOdd(_ number:Int) -> String {
    if number % 2 == 0 {
        return "Even"
    } else {
        return "Odd"
    }

//2nd option
// return number % 2 == 0 ? "Even" : "Odd"
}

evenOrOdd(3)

