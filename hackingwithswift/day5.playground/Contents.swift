//
import UIKit

/*
 1 - Funtions
 */
func printHelp() {
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""
    print(message)
}

printHelp()

/*
 2 - Accepting parameters
 */
func printSquare(number: Int) {
    print(number * number);
}
printSquare(number: 2)

/*
 3 - Returning values
 */
func square(number: Int) -> Int {
    return number * number
}
let result = square(number: 8)
print(result)

func doMath() -> Int {
    5 + 5
}
doMath()

func greatings(name: String) -> String {
    if name == "Taylor Swift" {
        "oh wow!"
    } else {
        "Hello \(name)"
    }
}
greatings(name: "Nicolas")

func great(name: String) -> String {
    let response = if name == "Taylor Swift" {
        "oh wow!"
    } else {
        "Hello \(name)"
    }
    return response
}
great(name: "Juan")

func getUser() -> (first: String, last: String) {
    (first: "Taylor", last: "Swift")
}
let user = getUser()
print(user.first)

/*
 4 - Parameter labels
 */
func sayHello(to name: String) {
    "Hello \(name)"
}
sayHello(to: "Ivan")

/*
 5 - Omitting parameter labels
 */
func greet(_ person: String) {
    print("Hello, \(person)")
}
greet("Taylor")

/*
 6 - Default parameters
 */
func greeting(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)")
    } else {
        print("Oh no, it's \(person) again...")
    }
}
greeting("Taylor")
greeting("Taylor", nicely: false)

/*
 7 - Variadic functions
 */
func multiSquare(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}
multiSquare(numbers: 1,2,3,4,5)
multiSquare(numbers: )

/*
 8 - Writing Throwing functions
 */
enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}

/*
 8 - Running throwing functions
 */
do {
    try checkPassword("password")
    print("The password is good!")
} catch {
    print("You can't use this password.")
}

/*
 9 - INOUT parameters
 */
func doubleInPlace(number: inout Int) {
    number *= 2
}
var myNumber = 10
doubleInPlace(number: &myNumber)
