import UIKit

var str = "Hello, playground"

//Protocols
protocol Identifiable {
    var id: String {get set}
}

struct User: Identifiable {
    var id: String
}

func displayID(thing: Identifiable) {
    print("My ID is \(thing.id)")
}

//Protocol inheritance
protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

protocol Employee: Payable, NeedsTraining, HasVacation { }

//Extensions
extension Int {
    func squared() -> Int {
        return self * self
    }
}

let number = 8
number.squared()

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}

//Protocol extensions
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

extension Collection {
    func summarize() {
        print("There are \(count) of us:")
        
        for name in self {
            print(name)
        }
    }
}

pythons.summarize
beatles.summarize()

//Protocol-oriented programming
protocol identifiable {
    var id: String { get set }
}

extension identifiable {
    func identify() {
        print("My Id is \(id).")
    }
}

struct user: identifiable {
    var id: String
}

let twostraws = user(id: "twostars")
twostraws.identify()
