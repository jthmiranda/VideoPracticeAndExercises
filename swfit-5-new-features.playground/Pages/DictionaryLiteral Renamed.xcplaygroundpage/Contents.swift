//: [Previous](@previous)

import Foundation

let dictionary = ["name": "Dee odus", "age": 38, "height": 185.0] as [String: Any]

let dictionaryLiteral: DictionaryLiteral = ["name": "Dee odus", "age": 38, "height": 185.0, "name": "Dee odus"] as KeyValuePairs<String, Any>


print(dictionary)
print(dictionaryLiteral.first)
//: [Next](@next)
