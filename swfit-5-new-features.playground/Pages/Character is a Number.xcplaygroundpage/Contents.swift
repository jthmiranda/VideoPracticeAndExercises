//: [Previous](@previous)

func characterIsNumber(string: String) {
    
    let characters = Array(string)
    
    for character in characters {
        if character.isNumber {
            print("\(character) is a number")
        } else {
            print("\(character) is NOT a number")
        }
        
//        let stringCharacter = String(character)
//        let characterInt = Int(stringCharacter)
//
//        if characterInt != nil {
//            print("\(character) is a number")
//        } else {
//            print("\(character) is NOT a number")
//        }
        
    }
}

characterIsNumber(string: "A8273UJD79J3HD")

//: [Next](@next)
