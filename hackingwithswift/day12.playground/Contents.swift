//Null references – literally when a variable has no value – were invented by Tony Hoare way back in 1965. When asked about it in retrospect, he said “I call it my billion-dollar mistake” because they lead to so many problems
import UIKit

/*
 1 - Handling missing data
 */
var age: Int? = nil
age = 38

var name: String? = nil
name == "" //false

/*
 2 - Unwrapping optionals
 */
var firstName: String? = nil

//firstName = "Taylor"

if let unwrappedName = firstName {
    print("The name has \(unwrappedName.count) letters")
} else {
    print("Missing name")
}

/*
 3 - Uwrapping with guard
 */
func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("Did you provide a name")
        return
    }
    print("Hello \(unwrapped)")
}

/*
 4 - Force unwrapping
 */
let str = "5"
let num = Int(str)!

/*
 5 - Implicity unwrapped optionals
 */
let ages: Int! = nil

/*
 6 - Nil coalescing
 */
func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor"
    }
    return nil
}

let user = username(for: 15) ?? "Anonymous"

let scores = ["Picard": 800, "Data": 700, "Troi": 900]
let crusherScore = scores["Crusher"] ?? 0
let scoresOfCrusher = scores["Crusher", default: 0]

/*
 7 - optional chaining
 */
let names = ["Jhon", "Paul", "George", "Ringo"]
let beatle = names.first?.uppercased()

/*
 8 - optional try
 */
enum PasswordError: Error {
    case obvius
    case crazy(pasword: String)
}

func checkpassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvius
    }
    return true
}

if let result = try? checkpassword("password") {
    print("Result was \(result)")
} else {
    print("D'oh.")
}

try! checkpassword("sekrit")
print("OK!")

/*
 9 - Failable initializers
 */
struct Person {
    var id: String
    
    init?(_ id: String) {
        if id.count == 9 {
            self.id = id
        } else {
            return nil
        }
    }
}

/*
 10 - Typecasting
 */
class Animal {}
class Fish: Animal {}
class Dog: Animal {
    func makeNoise() {
        print("Whoof!")
    }
}

let pets = [Fish(), Dog(), Fish(), Dog()]

for pet in pets {
    if let dog = pet as? Dog {
        dog.makeNoise()
    }
}

//Another example from udemy Brais Moure
let myString = "Brais"
let myInt = 32

class MyClass {
    var name: String!
    var age: Int!
}

let myClass = MyClass()
myClass.name = "Brais Moure"
myClass.age = 32

let myArray: [Any] = [myString, myInt, myClass]

for item in myArray {
    if item is String {
        // Downcasting
        let myItemString = item as! String
        print("Item es de tipo String y tiene el valor \(myItemString)")
    } else if item is Int {
        // Downcasting
        let myItemInt = item as! Int
        print("Item es de tipo Int y tiene el valor \(myItemInt)")
    } else if item is MyClass {
        // Downcasting
        let myItemMyClass = item as! MyClass
        print("Item es de tipo MyClass y tiene el valor \(myItemMyClass.name!)")
    }
}

for item in myArray {
    if let myItemString = item as? String {
        print("Item es de tipo String y tiene el valor \(myItemString)")
    } else if let myItemInt = item as? Int {
        print("Item es de tipo Int y tiene el valor \(myItemInt)")
    } else if let myItemMyClass = item as? MyClass {
        if let className = myItemMyClass.name {
            print("Item es de tipo MyClass y tiene el valor \(className)")
        }
    } else {
        print("Unknow type of item")
    }
}
