//Bill Gates once said, “I choose a lazy person to do a hard job, Because a lazy person will find an easy way to do it.
import UIKit

/*
 1 - Initializers
 */
struct User {
    var username: String
    
    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}

var user = User()
user.username = "twostraws"

// If you want to stay the default memberwise initializer
struct Empleoyee {
    var name: String
    var yearsActive = 0
}

extension Empleoyee {
    init() {
        self.name = "Anonymous"
        print("Creating an anonymous empleoyee...")
    }
}

let roslin = Empleoyee(name: "Laura Roslin")

let anon = Empleoyee()

/*
 2 - Referring to the current intance
 */
struct Person {
    var name: String
    
    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}

/*
 3 - Lazy properties
 */
struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

struct Persons {
    var name: String
    lazy var familyTree = FamilyTree()
    
    init(name: String) {
        self.name = name
    }
}

var ed = Persons(name: "Ed")

/*
 4 - Static properties and methos
 */
struct Student {
    static var classSize = 0
    var name: String
    
    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}

/*
 5 - Access control
 */
struct Persona {
    private var id: String
    
    init(id: String) {
        self.id = id
    }
    
    func identify() -> String {
        return "My social security number is \(id)"
    }
}
