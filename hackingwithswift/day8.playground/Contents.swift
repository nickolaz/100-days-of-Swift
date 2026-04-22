//As Fred Brooks, the author of the hugely influential book The Mythical Man-Month, once said, “the programmer at wit’s end... can often do best by disentangling themself from their code, rearing back, and contemplating their data. Representation is the essence of programming.”
import UIKit

/*
 1 - Creating Structs
 */
struct Sport {
    var name: String
}

var tennis = Sport(name: "Tennis")
print(tennis.name)

tennis.name = "Lawn tennis"

struct User {
    var name: String
    var age: Int
    var city: String
}

func authenticate(_ user: User){
    print(user.name)
}

var usr = User(name: "Nico", age: 28, city: "Asuncion")

authenticate(usr)

/*
 2 - Computed properties
 */
struct SportOlympic {
    var name: String
    var isOlympicSport: Bool
    
    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}

let chessBoxing = SportOlympic(name: "ChessBoxing" , isOlympicSport: false)
print(chessBoxing.olympicStatus)

/*
 3 - Property observers
 */
struct Progress {
    var task: String
    var amount: Int {
        didSet {
            //after
            print("\(task) is now \(amount)% complete")
        }
        willSet {
            //before
            print("\(task) has \(amount)% complete now!")
        }
    }
}

var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100

/*
 4 - Methods
 */
struct City {
    var population: Int
    
    func collectTaxes() -> Int {
        return population * 1000
    }
}

let london = City(population: 9_000_000)
london.collectTaxes()

/*
 5 - Mutating methods
 */
struct Person {
    var name: String
    
    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

var person = Person(name: "Ed")
person.makeAnonymous()

/*
 6 - Properties and methods of Strings
 */
let string = "Do or do not , there is no try."
print(string.count)
print(string.hasPrefix("Do"))
print(string.uppercased())
print(string.sorted())
var test = ""
if test.count != 0 {
    print("it's empty")
}

/*
 7 - Properties and methods of Arrays
 */
var toys = ["Woody"]
print(toys.count)
toys.append("Buzz")
toys.firstIndex(of: "Buzz")
print(toys.sorted())
toys.remove(at: 0)
