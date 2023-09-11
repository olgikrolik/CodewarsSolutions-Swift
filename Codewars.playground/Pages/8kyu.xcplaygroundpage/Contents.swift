import UIKit

// Challenge
// Clock shows h hours, m minutes and s seconds after midnight.
//Your task is to write a function which returns the time since midnight in milliseconds.

func past(_ h: Int, _ m: Int, _ s: Int) -> Int {
    
   let hoursToMilliseconds = h * 3600000
   let minutesToMilliseconds = m * 60000
   let secondsToMilliseconds = s * 1000

   return hoursToMilliseconds + minutesToMilliseconds + secondsToMilliseconds
}


past(2, 30, 22)
