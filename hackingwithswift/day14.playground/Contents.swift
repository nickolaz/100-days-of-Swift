import UIKit

/*
 1 - Functions
 */
func favoriteAlbum(name: String) {
    print("My favorite is \(name)")
}

favoriteAlbum(name: "Fearless")

func printAlbumRelease(album name: String,releasedYear year: Int) {
    print("\(name) was released in \(year)")
}

printAlbumRelease(album: "Fearless", releasedYear: 2008)
printAlbumRelease(album: "Speak Now", releasedYear: 2010)
printAlbumRelease(album: "Red", releasedYear: 2012)

func countingLetterInString(_ str: String) {
    print("The string \(str) has \(str.count) letters.")
}

countingLetterInString("Hello")

func albumTaylor(name: String) -> Bool{
    let albums = ["Taylor Swift", "Fearless", "Speak Now", "Red", "1989"]
    return albums.contains { item in
        item == name
    }
}

if albumTaylor(name: "Red") {
    print("That's one of hers!")
} else {
    print("Who made that?!")
}

/*
 2 - Optionals
 */
func getHaterStatus(weather: String) -> String? {
    if weather == "sunny" {
        return nil
    } else {
        return "Hate"
    }
}

if let status = getHaterStatus(weather: "sunny") {
    print("Hate")
} else {
    print("No Hate")
}

if let haterStatus = getHaterStatus(weather: "stormy") {
    print("Hate")
} else {
    print("No Hate")
}

/*
 3 - Optional chaining
 */
func albumReleased(year: Int) -> String? {
    switch year {
    case 2006:
        return "Taylor Swift"
    case 2008:
        return "Fearless"
    case 2010:
        return "Speak Now"
    case 2012:
        return "Red"
    case 2014:
        return "1989"
    default:
        return nil
    }
}

let album = albumReleased(year: 2006)?.uppercased()
let anotherAlbum = albumReleased(year: 2008) ?? "unknow"
print("The album is \(anotherAlbum)")

/*
 4 - Enumerations
 */
enum WeatherType {
    case sun
    case cloud
    case rain
    case wind(speed: Int)
    case snow
}

func getHateStatus(weather: WeatherType) -> String? {
    switch weather {
    case .sun:
        return nil
    case .wind(let speed) where speed < 10:
        return "meh"
    case .cloud , .wind:
        return "dislike"
    case .rain:
        return "hate"
    default:
        return "happy"
    }
}

getHateStatus(weather: .cloud)
getHateStatus(weather: .wind(speed: 5))

// optional is implement with enums
func knockknock(_ caller: String?) {
    print("Who's there?")
    switch caller {
    case .none:
        print("* silence *")
    case .some(let person):
        print(person)
    }
}

knockknock(nil)
knockknock("orange")

/*
 5 - structs
 */
struct Person {
    var shoes: String
    var clothes: String
    
    func describe() {
        print("I like wearing \(clothes) with \(shoes)")
    }
}

let taylor = Person(shoes: "sneakers", clothes: "T-shirts")
let another = Person(shoes: "high heels", clothes: "short skirts")

var taylorCopy = taylor

taylorCopy.shoes = "flip flops"

print(taylor.shoes)
print(another.clothes)
print(taylorCopy.shoes)

taylor.describe()

/*
 6 - classes
 */
class Persons {
    var clother: String
    var shoes: String
    
    init(clother: String, shoes: String) {
        self.clother = clother
        self.shoes = shoes
    }
}

class Singer {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func sing() {
        print("La la la la")
    }
}

let taylorS = Singer(name: "Taylor", age: 25)
taylorS.name
taylorS.age
taylorS.sing()

class CountrySinger: Singer {
    override func sing() {
        print("Trucks, guitars, and liquor")
    }
}

class HeavyMetalSinger: Singer {
    var noiseLevel: Int
    
    init(noiseLevel: Int, name: String, age: Int) {
        self.noiseLevel = noiseLevel
        super.init(name: name, age: age)
    }
    
    override func sing() {
        print("Grrrrr rargh rargh rarrrrgh!")
    }
}
