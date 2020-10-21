import UIKit

var str = "Hello, playground"

//Creating your own classes
 class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

let poppy = Dog(name: "Poppy", breed: "Poodle")
//Class inheritance
class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}


//Overriding methods
class dog {
    func makeNoise() {
        print("Woof!")
    }
}

class poodle: dog {
    override func makeNoise() {
        print("Yip!")
    }
    
}

let popy = poodle()
popy.makeNoise

//Final classes
final class Doog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

let poppyy = Doog(name: "Poppy", breed: "Poodle")

//Copying objects
class Singer {
    var name = "Taylor Swift"
}

var singer = Singer()
print(singer.name)

var singerCopy = singer
singerCopy.name = "Justin Bieber"

print(singer.name)

//Deinitializers
class Person {
    var name = "John Doe"
    
    init() {
        print("\(name) is alive!")
    }
    
    func printGreeting() {
        print("Hello, I'm \(name)")
    }

    deinit {
        print("\(name) is no more!")
    }

}

for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}

//Mutability
class Sinnger {
   var name = "Taylor Swift"
}

let taylor = Sinnger()
taylor.name = "Ed Sheeran"
print(taylor.name)
