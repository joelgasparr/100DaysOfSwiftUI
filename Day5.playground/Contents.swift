import UIKit

//Writing functions
func printHelp() {
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and MyApp will resize them all into thumbnails
"""
    
    print(message)
}


printHelp()

//Accepting parameters
print("Hello, world!")

func square(numbers: Int) {
    print(numbers * numbers)
}

square(numbers: 8)

//Parameter labels
func sayHello(to name: String) {
    print("Hello, \(name)!")
}

sayHello(to: "Taylor")

//Omitting parameter labels
func greet(_ person: String) {
    print("Hello, \(person)!")
}

greet("Taylor")

//Variadic functions
func square(numbers: Int...) {
for number in numbers {
    print("\(number) squared is \(number * number)")
  }
}
square(numbers: 1, 2, 3, 4, 5)

//Writing throwing functions
enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

//Inout parameters
func doubleInPlace(number: inout Int) {
    number *= 2
}

var myNum = 10
doubleInPlace(number: &myNum)
