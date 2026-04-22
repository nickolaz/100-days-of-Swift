//Martin Fowler wrote, “any fool can write code that a computer can understand, but good programmers write code that humans can understand.”
import UIKit

/*
 1 - creating your own classes
 */
class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

let poppy = Dog(name: "Poppy", breed: "Poodle")

/*
 2 - Class inheritance
 */
class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Podle")
    }
}

/*
 3 - Overriding methods
 */
class Dogs {
    func makeNoise() {
        print("Woof!")
    }
}

class Poodles: Dogs {
    override func makeNoise() {
        print("Yip!")
    }
}

let poppys  = Poodles()
poppys.makeNoise()

/*
 4 - Final classes
 */
final class Dogi {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

/*
 5 - Copying objects
 */
class Singer {
    var name = "Taylor Swift"
}

var singer = Singer()
print(singer.name)
var singerCopy = singer
singerCopy.name = "Justing Bieber"
print(singer.name)

/*
 6 - Deinitializers
 */
//Anne Cahalan: “Code should read like sentences, which makes me think my classes should read like chapters. So the deinitializer goes at the end, it's the ~fin~ of the class!”
class Person {
    var name = "John Doe"
    
    init(name: String) {
        self.name += name
        print("\(name) is alive!")
    }
    
    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    
    deinit {
        print("\(name) is no more!")
    }
}

for index in 1...3 {
    let person = Person(name: "\(index)")
    person.printGreeting()
}

/*
 7 - Mutability
 */
class Singers {
    var name = "Taylor Swift"
    let yearOfBorn = 1989
}

let taylor = Singers()
taylor.name = "Ed Sheeran"
//Error the field is constant
//taylor.yearOfBorn = 2024
print(taylor.name)
