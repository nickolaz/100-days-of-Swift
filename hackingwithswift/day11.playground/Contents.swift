// Tony Hoare said many years ago: “inside every large program, there is a small program trying to get out.”
import UIKit

/*
 1 - Protocols
 */
protocol Identificable {
    var id: String { get set }
}

struct User: Identificable {
    var id: String
}

func displayID(think: Identificable) {
    print("My ID is \(think.id)")
}

/*
 2 - Protocol inheritance
 */
protocol Payable {
    func calculateWages() -> Int
}

protocol NeedTraining {
    func stydy()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

protocol Empleoyee: Payable , NeedTraining , HasVacation {
}

/*
 3 - Extensions
 */
extension Int {
    func squared() -> Int {
        return self * self
    }
    
    var isEven: Bool {
        return self % 2 == 0
    }
}

let number: Int = 8
number.squared()
number.isEven

/*
 4 - Protocol extensions
 */
let pythons = ["Eric", "Graham", "Jhon", "Michael", "Terry", "Terry"]
let beatles = Set(["Jhon", "Paul", "George", "Ringo"])

extension Collection {
    func summarize(){
        print("The are \(count) of us:")
        
        for name in self {
            print(name)
        }
    }
}

pythons.summarize()
beatles.summarize()

/*
 5 - Protocol oriented programming
 */
protocol Identificables {
    var id: String { get set }
    func identify()
}

extension Identificables {
    func identify() {
        print("My ID is \(id).")
    }
}

struct Users: Identificables {
    var id: String
}

let twostraws = Users(id: "twostraws")
twostraws.identify()

/*
 Extra
 */
/*
 Delegate Protocol
 */
protocol SecondClassProtocol {
    func call()
}

class FirstClass: SecondClassProtocol {
    func callSecond() {
        let secondClass = SecondClass()
        secondClass.delegate = self
        secondClass.callFirst()
    }
    
    func call() {
        print("I'm here")
    }
}

class SecondClass {
    var delegate: SecondClassProtocol?
    
    func callFirst() {
        sleep(5)
        delegate?.call()
    }
}

var firstClass = FirstClass()
firstClass.callSecond()

/*
 Generics
 */
func swapTwoGenerics<T, U: Collection>(a: inout T, b: inout T, c: U) {
    let tempA = a
    a = b
    b = tempA
    print(c)
}

var aInt = 10
var bInt = 15
var aStr = "Brais"
var bStr = "Moure"
var c = [1, 2, 3, 4]
swapTwoGenerics(a: &aInt, b: &bInt, c: c)
swapTwoGenerics(a: &aStr, b: &bStr, c: c)
