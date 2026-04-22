// Joseph Campbell said "computers are like Old Testament gods: lots of rules and no mercy"

import UIKit

/*
 1 - Arithmetic operators
*/
let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
let difference = firstScore - secondScore

let product = firstScore * secondScore
let divided = firstScore / secondScore

let remainder = 13 % secondScore

/*
 2 - Compound assignment
*/
var score = 95
score -= 5

var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"

/*
 3 - Comparison operators
*/
firstScore == secondScore
firstScore != secondScore

firstScore < secondScore
firstScore >= secondScore

enum Sizes: Comparable {
    case small
    case medium
    case large
}

let first = Sizes.small
let second = Sizes.large

first < second

/*
 4 - Conditions
*/
let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 2 {
    print("Aces - lucky")
} else if firstCard + secondCard == 21 {
    print("Blackjack")
} else {
    print("Regular cards")
}

/*
 5 - Combining operators
*/
let age1 = 12
let age2 = 21

if age1 >= 18 && age2 >= 18 {
    print("Both are over 18")
}
if age1 >= 18 || age2 >= 18 {
    print("At least one is ove 18")
}

/*
 6 - Switch statements
*/
let weather = "sunny"

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    //  Continue on to the next case
    fallthrough
default:
    print("Enjoy your day!")
}

/*
 7 - Range operators
*/
let newScore = 85

switch newScore {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}

let names = ["Piper","Alex","Suzanne","Gloria"]

print(names[1...3])
print(names[1...])
