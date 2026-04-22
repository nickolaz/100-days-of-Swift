//Flip Wilson's law: “you can't expect to hit the jackpot if you don't put a few nickels in the machine.”
import UIKit

/*
 1 - Creating basic closures
 */
let driving = {
    print("I'm driving a car")
}
driving()

/*
 2 - Accepting parameters
 */
let drivingTo = {
    (place: String) in
    print("I'm going to \(place) in my car")
}
drivingTo("London")

/*
 3 - Returning values
 */
let drivingWithReturn = {
    (place: String) -> String in
    return "I'm going to \(place) in my car"
}
let message = drivingWithReturn("London")
print(message)

/*
 4 - Closures as parameters
 */
func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}
travel(action: driving)

/*
 5 - Trailing closure syntax
 */
travel(){
    print("I'm driving a car!")
}

travel {
    print("I'm driving a car!")
}
