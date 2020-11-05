import UIKit

var str = "Hello, playground"

func getHaterStatus(weather: String) -> String? {
    if weather == "sunny" {
        return nil
    } else {
    return "Hate"
}
}

var status = getHaterStatus(weather: "rainy")
 
if let unwrappedStatus = status {
    
} else {

}
    
func takeHaterAction(status: String) {
    if status == "Hate" {
        print("Hating")
    }
}


if let haterStatus = getHaterStatus(weather: "rainy") {
    takeHaterAction(status: haterStatus)
}



func yearAlbumRelease(name: String) -> Int? {
    if name == "Taylor Swift" { return 2006 }
    if name == "Fearless" { return 2008 }
    return nil
}


var items = ["James", "John", "Sally"]

func position(of string: String, in array: [String]) -> Int {
    for i in 0..<array.count {
        if array[i] == string {
            return i
        }
    }

return 0
}

let jamesPosition = position(of: "James", in: items)
let johnPosition = position(of: "John", in: items)
let sallyPosition = position(of: "Sally", in: items)
let bobPosition = position(of: "Bob", in: items)



func YearAlbumRelease(name: String) -> Int? {
    if name == "Taylor Swift" { return 2006 }
    if name == "Fearless" { return 2008 }
    return nil
}

var year = yearAlbumRelease(name: "Taylor Swift")

if year == nil {
    print("There was an error")
} else {
    print("It was released in \(year)")
}


var name: String = "Paul"
var name2: String? = "Bob"
var name3: String! = "Sophie"

