import UIKit

//Challenge 1
//Clock shows h hours, m minutes and s seconds after midnight.
//Your task is to write a function which returns the time since midnight in milliseconds.

func past(_ h: Int, _ m: Int, _ s: Int) -> Int {
    
   let hoursToMilliseconds = h * 3600000
   let minutesToMilliseconds = m * 60000
   let secondsToMilliseconds = s * 1000

   return hoursToMilliseconds + minutesToMilliseconds + secondsToMilliseconds
}


past(2, 30, 22)



//Challenge 2
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



//Challenge 3
//Make a simple function called greet that returns the most-famous "hello world!".
//Style Points
//Sure, this is about as easy as it gets. But how clever can you be to create the most creative "hello world" you can think of? What is a "hello world" solution you would want to show your friends?

func greet() -> String {
    let greeting = "hello world!"
    return greeting
}

greet()



//Challenge 4
//Implement a function which convert the given boolean value into its string representation.
//Note: Only valid inputs will be given.

func booleanToString(_ b: Bool) -> String {
  return String(b)
}

booleanToString(true)


//Challenge 5
//Make a function that will return a greeting statement that uses an input; your program should return, "Hello, <name> how are you doing today?".
//[Make sure you type the exact thing I wrote or the program may not execute properly]

func greet(_ name: String) -> String {
  return "Hello, \(name) how are you doing today?"
}
greet("Olga")


//Challenge 6
//This function should test if the factor is a factor of base.
//Return true if it is a factor or false if it is not.

func checkForFactor(_ base: Int, _ factor: Int) -> Bool {
    return base % factor == 0 ? true : false
}

checkForFactor(9, 2)

//Challenge 7
//Given a random non-negative number, you have to return the digits of this number within an array in reverse order.

func digitize(_ num:Int) -> [Int] {
    let numbers = num
    let numArray = String(numbers).compactMap { Int(String($0)) }
    return numArray.reversed()
}

digitize(12345)
