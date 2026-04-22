//Benjamin Franklin once said, “energy and persistence conquer all things”
import UIKit

/*
 1 - Using closures as parameters when they accept parameters
 */
func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I Arrived!")
}

travel { (place: String) in
    print("I'm going to \(place) in my car")
}

/*
 2 - Using closures as parameters when they return values
 */
func travelTo(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I Arrived!")
}
travelTo { (place: String) in
    return "I'm going to \(place) in my car"
}

//reducer example
func reduce(_ arr: [Int] , using reducer: (Int,Int) -> Int) -> Int {
    var current = 0
    for item in arr {
        current = reducer(current,item);
    }
    return current
}

let numbers = [10,20,30]

let sum = reduce(numbers) { (runningTotal: Int, next: Int) in
    runningTotal + next
}

print(sum)

reduce([10,20,40], using: +)

/*
 3 - Shorthand parameter names
 */
travelTo { place in
    "I'm going to \(place) in my car"
}
// dollar sign parameters
travelTo {
    "I'm going to \($0) in my car"
}

/*
 4 - Closures with multiple parameters
 */
func travelWithSpeed(action: (String,Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London" , 60)
    print(description)
    print("I Arrived!")
}
travelWithSpeed {
    "I'm going to \($0) at \($1) miles per hour "
}

/*
 5 - Returning Closures from function
 */
func travel() -> (String) -> String {
    return {
        "I'm going to \($0) in my car"
    }
}

let result = travel()

result("London")

let result2 = travel()("London")

func makeRandomGenerator() -> () -> Int {
    let function = {
        Int.random(in: 1...10)
    }
    return function
}

let generator = makeRandomGenerator()

let random1 = generator()

print(random1)

/*
 6 - Capturing values
 */
func travelCounting() -> (String) -> Void {
    var count = 0
    return {
        print("\(count). I'm going to \($0)")
        count += 1
    }
}
let resultTravel = travelCounting()
resultTravel("London")
resultTravel("London")
resultTravel("London")

func makeRandomGeneratorRow() -> () -> Int {
    var previusNumber = 0
    return {
        var newNumber: Int
        repeat {
            newNumber = Int.random(in: 1...3)
        } while previusNumber == newNumber
        previusNumber = newNumber
        return newNumber
    }
}

let numberGenerator = makeRandomGenerator()

for _ in 1...10 {
    print(numberGenerator())
}
