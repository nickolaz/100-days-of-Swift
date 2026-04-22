//Craig Bruce said, “it’s hardware that makes a machine fast, but it’s software that makes a fast machine slow.”
import UIKit

/*
 1 - For loops
*/
let count = 1...10

for number in count {
    print("Number is \(number)")
}

let albums = ["Red","1989","Reputation"]

for album in albums {
    print("\(album) is on Apple Music")
}

print("Players gonna")

for _ in 1...5 {
    print("Plays")
}

/*
 2 - While loops
*/
var number = 1

while number <= 20 {
    print(number)
    number += 1
}

print("Ready or not, here I come!")

/*
 3 - Repeat loops
*/
number = 1

repeat {
    print(number)
    number += 1
}while number <= 20

print("Ready or not, here I come!")

//example shuffle an array
let numbers = [1,2,3,4,5]
var random: [Int]

repeat {
    random = numbers.shuffled()
} while random == numbers

/*
 4 - Exiting loops
*/
var countDown = 10

while countDown >= 0 {
    print(countDown)
    
    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break
    }
    
    countDown -= 1
}

print("Blast off!")

let scores = [1, 8, 4, 3, 0, 5, 2]
var countScores = 0

for score in scores {
    if score == 0 {
        break
    }
    
    countScores += 1
}

print("You has \(countScores) scores befores you got 0.")

/*
 5 - Exiting multiple loops
*/
//labeled statement
outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print("\(i) * \(j) is \(product)")
        
        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}

/*
 6 - Skipping items
*/
for i in 1...10 {
    if i % 2 == 1 {
        continue
    }
    
    print(i)
}

for i in 1...100 {
    if 100 % i == 0 {
        print("100 divides evenly into \(i)")
    } else {
        continue
    }
}

/*
 7 - Infinite loop
*/
// Hohn Cage's piece 4'33"
var counter = 0

while true {
    print(" ")
    counter += 1
    
    if counter == 273 {
        break
    }
}
