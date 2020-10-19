import UIKit

var str = "Hello, playground"

//Initializers
struct User {
    var username: String
    
    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}

var user = User()
user.username = "twostrwas"

//Referring to the instance
struct Person {
    var name: String
    
    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}

//Lazy properties
struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

struct person {
    var name: String
   lazy var familyTree = FamilyTree()
    
    init(name: String) {
        self.name = name
    }
}

var ed = person(name:"Ed")
ed.familyTree


//Static properties and metho
struct Student {
    static var classSize = 0
    var name: String
    
    
    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}

let Ed = Student(name: "Ed")
let taylor = Student(name: "Taylor")

//Access control
struct perrson {
    private var id: String
    
    init(id: String) {
        self.id = id
    }
    
    func identify() -> String {
        return "My social security number is \(id)"
    }
}

let ded = perrson(id: "12345")
