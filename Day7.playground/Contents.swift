import UIKit

var str = "Hello, playground"

//Using closures as parameters when they accept parameters
func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}

travel { (place: String) in
    print("I'm going to \(place) in my car")
    
}
func Travel(action: (String) -> String) {
    print("I'm getting ready to go")
    let description = action ("London")
    print(description)
    print("I arrived")
}

Travel { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

//Closures with multiple parameters
func travell(action: (String, Int) -> String) {
    print("I'm getting ready to go")
    let description = action("Londob", 60)
    print(description)
    print("I arrived")
}

travell {
    "I'm going to \($0) at \($1) miles per hour"
}

//Returning closures from functions
func travel() -> (String) -> Void {
    return {_ in
        print("I'm going to \(0)")
    }
}

let result = travel()
result("London")

let result2: Void = travel()("London")

//Capturing values
func trravel() -> (String) -> Void {
    var counter = 1
    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}

let Result = trravel()

func test(valor: Int) -> (Int) -> Void {
    
    return {
        print("valor \(valor), Entero: \($0)")
    }
}

func filterLesserThanValue(value: Int, numbers: [Int]) -> [Int]{
    var filteredSetOfNumbers = [Int]()
    for num in numbers {
        if num < value {
            filteredSetOfNumbers.append(num)
        }
    }
    return filteredSetOfNumbers
}

func filterWithPredicateClosure(closure: (Int) -> Bool, numbers: [Int]) -> [Int] {
    var filterNumbers = [Int]()
    for num in numbers{
        //perform some condition check here
        if closure(num) {
            filterNumbers.append(num)
        }
    }
    return filterNumbers
}

func greaterThanThree(value: Int) -> Bool {
    return value > 3
}

func divisibleByFive(value:Int) -> Bool{
    return value % 5 == 0
}
//let filteredList = filterWithPredicateClosure(closure: greaterThanThree, numbers: [10, 5, 1, 2, 0])
//let filteredList = filterWithPredicateClosure(closure: divisibleByFive, numbers: [20, 30, 1, 2, 9, 25])
//print(filteredList)

//let filteredList = filterWithPredicateClosure(closure: { (num) -> Bool in
// return num > 2
//}, numbers: [1, 2, 3, 4, 5, 10])


//let filteredList = filterLesserThanValue(value: 5, numbers: [1, 2, 3, 4, 5, 10]}
//print(filteredList)

func lowerThanZero(value: Int) -> Bool {
    return value < 0
}
let filteredList = filterWithPredicateClosure(closure: lowerThanZero, numbers: [1, 5, -5, -10, 9, 3, -7, -12, 0])
print(filteredList)
