//: [Previous](@previous)

import Foundation

extension String {
    
    enum EmptyError: Error {
        case emptyString
    }
    
    func characters() throws -> String {
        if self.isEmpty {
            throw EmptyError.emptyString
        }
        
        return "\(self.count)"
    }
}

let string = Optional.some("jthmiranda")
let characters = try? string?.characters()
print(characters)
if let characters = characters {
    print(characters)
}

//: [Next](@next)
