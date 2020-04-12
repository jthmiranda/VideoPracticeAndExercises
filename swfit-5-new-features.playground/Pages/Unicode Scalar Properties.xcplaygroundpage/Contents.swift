//: [Previous](@previous)

import Foundation

func checkUnicodeScalar(chain: String) {
    
    for scalar in chain.unicodeScalars {
        if scalar.properties.isUppercase {
            print("\(scalar) is a CAPITAL letter")
        } else if scalar.properties.isLowercase {
            print("\(scalar) is a LOWER letter")
        } else if scalar.properties.isHexDigit {
            print("\(scalar) is a NUMBER")
        }
        
//        let scalarValue = scalar.value
//
//        if (65...90).contains(scalarValue) {
//            print("\(scalar) is a CAPITAL letter")
//        } else if (97...122).contains(scalarValue) {
//            print("\(scalar) is a LOWER letter")
//        } else if (48...57).contains(scalarValue) {
//            print("\(scalar) is a NUMBER")
//        }
    }
    
}

checkUnicodeScalar(chain: "stable121AWS@")

//: [Next](@next)
