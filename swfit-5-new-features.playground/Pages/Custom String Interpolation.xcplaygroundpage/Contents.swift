//: [Previous](@previous)
import Foundation

struct Person {

    var name: String
    var age: Int
    var height: Float
    
}

extension String.StringInterpolation {
    
    mutating func appendInterpolation(_ person: Person) {
        print("My name is \(person.name). I am \(person.age), I am \(person.height)cm tall")
    }
    
    mutating func appendInterpolation(_ name: String, _ age: Int) {
        print("My name is \(name) and I am \(age)")
    }
}


let deeodus = Person(name: "Dee Odus", age: 38, height: 185)
print("\(deeodus.name, deeodus.age)")

//: [Next](@next)
