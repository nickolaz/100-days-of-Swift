import UIKit

/*
 1 - Properties
 */
struct Person {
    var clothes: String {
        willSet {
            print("I'm changing from \(clothes) to \( newValue)")
        }
        didSet {
            print("I just changed from \(oldValue) to \(clothes)")
        }
    }
    var shoes: String
    var age: Int
    var ageInDogYear: Int {
        get {
            return self.age * 7
        }
    }
    func describe() {
        print("I like wearing \(clothes) with \(shoes)")
    }
}

var taylor = Person(clothes: "T-shirts", shoes: "sneakers",age: 25)
let other = Person(clothes: "short skirts", shoes: "high heels",age: 28)
taylor.describe()
other.describe()
taylor.clothes = "short skirts"
taylor.describe()
taylor.ageInDogYear

/*
 2 - static properties and methods
 */
struct TaylorFan {
    static var favoriteSong = "Look what you make me Do"
    
    var name: String
    var age: Int
}

let fan = TaylorFan(name: "James", age: 25)
print(TaylorFan.favoriteSong)

/*
 3 - Access control
 */
class TaylorFans {
    private var name: String?
    fileprivate var age: Int?
}

let fan2 = TaylorFans()
// inaccessible due to 'private' protecction level
//fan2.name = "James"
fan2.age = 25

/*
 4 - Polimorphism and typecasting
 */
class Album {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func getPerformance() -> String {
        return "The Album \(name) sold lots"
    }
}

class StudioAlbum: Album {
    var studio: String
    
    init(name: String,studio: String) {
        self.studio = studio
        super.init(name: name)
    }
    
    override func getPerformance() -> String {
        return "The Studio Album \(name) sold lots"
    }
}

class LiveAlbum: Album {
    var location: String
    
    init(name: String,location: String) {
        self.location = location
        super.init(name: name)
    }
    
    override func getPerformance() -> String {
        return "The live Album \(name) sold lots"
    }
}

var taylorSwift = StudioAlbum(name: "Taylor Swift", studio: "The Castles Studios")
var fearless = StudioAlbum(name: "Fearless", studio: "Aimeeland Studio")
var iTunesLive = LiveAlbum(name: "iTunes Live from SoHo", location: "New York")

var allAlbums: [Album] = [taylorSwift, fearless, iTunesLive]

for album in allAlbums {
    print(album.getPerformance())
    
    if let studioAlbum = album as? StudioAlbum {
        print(studioAlbum.studio)
    } else if let liveAlbum = album as? LiveAlbum {
        print(liveAlbum.location)
    }
}

/*
 5 - closures
 */
func Button(_ title: String, action: () -> Void ){
    print(title)
    action()
}

let message = "Buttom pressed"

Button("Press Me") {
    print(message)
}
