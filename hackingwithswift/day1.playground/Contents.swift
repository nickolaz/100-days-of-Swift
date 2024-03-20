//First steps in Swift

// Create a blank playground

import UIKit

/*
--------------------
1 - Create a variable
*/

var str = "Hello, playground"

// we dont need var because str is already created.
// just changing it

str = "Goodbye"

/*
--------------------
2 - Strings and integers
*/

// This variable store a string

var name = "Nico"

// This variable store a Integer

var age = 28

// This variable store a large Integer

var population = 7_000_000

/*
--------------------
3 - Multi-line strings
*/

// This is a multi-line string every new line have a line break(\n)

var multiStr = """
This goes
over multiple
lines
"""

// use "\" when you don't want those lines breaks

var multiStr2 = """
This goes \
over multiple \
lines
"""

/*
--------------------
4 - Double and booleans
*/

//This is a double , this store a decimal number

var pi = 3.141

// This is a boolean , this store a true or false

var awesome = true

/*
--------------------
5 - string interpolation
*/
 
/*
This is a way of injecting custom data into strings at runtime
It replaces one or more parts of a string with data provided by us.
*/
var price = 10
var total = "Your total is \(price)"

/*
--------------------
6 - Constants
*/

//This value can be set once and never again
let taylor = "swift"

/*
--------------------
7 - Type Anotations
*/

//You can be explicit about the type of your data rather than relying on Swift’s type inference
let album : String = "Reputation"
let year : Int = 1989
let height: Double = 1.78
let taylorRocks: Bool = true

//Examples of use

//Double variable without having to constantly write “.0”
var percentage : Double = 99

//You don’t want to set its value just yet
var lastName: String

