import UIKit

var str = "Hello, playground"

struct person {
    var clothes: String {
     willSet {
        updateUI(msg: "I'm changing froom \(clothes) to \(newValue)")
    }
    
    didSet {
        updateUI(msg: "I just changed from \(oldValue) to \(clothes)")
    }
    
    }
}

func updateUI(msg: String) {
       print(msg)
}

var taylor = person(clothes: "T-shirts")
    taylor.clothes = "short skirts"


struct Person {
    var age: Int
    
    var ageInDogYears: Int {
        return age * 7
    }
}

var fan = Person(age: 25)
print(fan.ageInDogYears)
