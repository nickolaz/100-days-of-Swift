//Lynch’s Law says “when the going gets tough, everyone leaves.”

import UIKit

/*
 1 - Arrays
*/
let jhon: String = "Jhon Lennon"
let paul: String = "Paul McCartney"
let george: String = "George Harrison"
let ringo: String = "Ringo Starr"

let beatles : [String] = [jhon, paul, george, ringo]

beatles[1]

// empty array
var results = [Int]()
var results2 = Array<Int>()

/*
 2 - Sets
*/
let colors = Set(["red","green","blue"])

// If you try to insert a duplicate item into a set, the duplicates get ignored.
let colors2 = Set(["red","green","blue","red","blue"])

// Set with type explicit
let colorsName = Set<String>(["red","blue","green"])

// empty set
var words = Set<String>()
var numbers = Set<Int>()

/*
 3 - Tuples
*/
var name = (firsst: "Taylor" , last: "Swift")

//Access items
// by index
name.0
// by name
name.firsst

// This is a error,a create tuple don't change the types
//name = (first: "Justin" , age: 25)

/*
 4 - Dictionaries
*/
let heights = [
    "Taylor": 1.78,
    "Ed Sheeran": 1.73
]

// read by key
heights["Taylor"]

// example using type annotations
let countryCapitals : [String : String] = [
    "Paraguay": "Asuncion",
    "Chile": "Santiago",
    "Argentina": "Buenos Aire"
    ]
countryCapitals["Chile"]

// default value
countryCapitals["Uruguay", default: "Unknown"]

// empty dictionary
var teams = [String: String]()
var scores = Dictionary<String,Int>()

// add entrie inside
teams["Paul"] = "Red"

/*
 5 - Enumerations
*/
enum Result {
    case success
    case failure
}

let result4 = Result.failure

// enum associated values
enum Activity {
    case bored
    case running(destination : String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "football")

// enum raw values
enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}

let earth = Planet(rawValue: 3)

enum OnboardingPage: String {
    case welcome
    case grids
    case rulers
    case selectXcode = "Select Xcode"
}

OnboardingPage.welcome.rawValue
OnboardingPage.selectXcode.rawValue

// adding Iterable
enum OnboardinPages: String , CaseIterable {
    case welcome
    case grids
    case rulers
    case selectXcode
    
    var title: String {
        switch self {
        case .welcome:
            return "Welcome to RocketSim"
        case .grids:
            return "Grids to align"
        case .rulers:
            return "Rulers for precision"
        case .selectXcode:
            return "Select Xcode"
        }
    }
}

// access custom variable
OnboardinPages.welcome.title

//Print All cases
OnboardinPages.allCases
