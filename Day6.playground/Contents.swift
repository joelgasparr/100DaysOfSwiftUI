import UIKit

var str = "Hello, playground"

//Basic closures
let driving = {
    print("I'm driving in my car")
}

driving()

//Parameters in a closures

let driviing = { (place: String) in
    print("I'm going to \(place) in my car")
}

driviing ("London")

//Returning values from a closure
let driviingWithReturn = { (place: String) -> String
    in
    return "I'm going to \(place) in my car"
}

let message = driviingWithReturn ("London")
print(message)

//Closures as parameters
let
Driving = {
    print("I'm driving my car")
}

func travel(action: () -> Void){
    print("I'm getting ready to go")
    action()
    print("I arrived!")
}

travel(action: Driving)

