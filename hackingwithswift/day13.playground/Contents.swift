import UIKit

/*
 1 - Variables and constansts
 */
var name = "Tim McGraw"
name = "Romeo"

/*
 2 - Types of Data
 */
var names: String
names = "Tim McGraw"

var age: Int
age = 25

var latitude: Double
latitude = 36.166667

var longitude: Float
longitude = -86.783333
longitude = -186.783333
longitude = -1286.783333
longitude = -12386.783333
longitude = -123486.783333
longitude = -1234586.783333

var stayOutTooLate: Bool
stayOutTooLate = true

var nothingInBrain: Bool
nothingInBrain = true

var missABeat: Bool
missABeat = false

/*
 3 - Operators
 */
var a = 10
a = a + 1
a = a - 1
a = a * a

var b = 10
b += 10
b -= 10

var c = 1.1
var d = 2.2
var e = c + d

var name1 = "Tim McGraw"
var name2 = "Romeo"
var both = name1 + " and " + name2

e > 3
e >= 3
e > 4
e < 4

name1 == "Tim McGraw"
name1 != "Tim McGraw"

var stayOutTooLates = true
stayOutTooLates
!stayOutTooLates

/*
 4 - String Interpolation
 */
var userName = "Tim McGraw"
var userAge = 25
var userLatitude = 36.166667
"Your name is \(userName), your name is \(userAge), and your latitude is \(userLatitude)"

/*
 5 - Arrays
 */
var evenNumbers = [2, 4, 6, 8]
var songs: [Any] = ["Shake off", "You Belong with Me", "Back to December", 3]
songs[0]
songs[1]
songs[2]
type(of: songs)

var songs2 = ["Today was a FairyTale", "Welcome to New York", "Fifteen"]
var bothSongs = songs + songs2
bothSongs += ["Everithing was change"]

/*
 6 - Dictionaries
 */
var person = [
    "first": "Taylor",
    "middle": "Alison", 
    "last": "Swift",
    "month": "December",
    "website": "taylorswift.com"
]
person["middle"]
person["month"]

/*
 7 - Conditional statements
 */
var action: String
var personString = "hater"

if personString == "hater" {
    action = "hate"
} else if personString == "player" {
    action = "play"
} else {
    action = "cruise"
}

/*
 8 - Loops
 */
for i in 1...10 {
    print("\(i) x 10 is \(i * 10)")
}

var counter = 0

while true {
    print("Counter is now \(counter)")
    counter += 1
    
    if counter == 556 {
        break
    }
}

var swiftSongs = ["Shake it off", "You Belong with Me", "Look What You Made Me Do"]
for songs in swiftSongs {
    if songs == "You Belong with Me" {
        continue
    }
    print("My favorite song is \(songs)")
}

/*
 9 - Switch case
 */
let liveAlbums = 2

switch liveAlbums {
case 0:
    print("You're just starting out")
case 1:
    print("You just released iTunes Live From SoHo")
case 2:
    print("You just released Speak Now World Tour")
default:
    print("Have you done something new?")
}
