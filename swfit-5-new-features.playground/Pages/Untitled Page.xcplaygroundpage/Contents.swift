//: [Previous](@previous)

import Foundation

var str = "Hello, playground"


func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
     return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}

var number = [20, 19, 7, 12]
print(hasAnyMatches(list: number, condition: lessThanTen))



//: [Next](@next)
