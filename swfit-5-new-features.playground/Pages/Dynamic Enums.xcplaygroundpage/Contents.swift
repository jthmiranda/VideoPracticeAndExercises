//: [Previous](@previous)

import Foundation

enum RegistrationError {
    case username
    case email
    case password
    case name
    case age // age must be at least 18
}

func showError(error: RegistrationError) {
    switch error {
    case .username:
        print("username must be lowercased")
    case .email:
        print("email is not correct")
    case .password:
        print("passwrod must be at least 8 characters")
    case .name:
        print("")
    case .age:
        print("")
    @unknown default:
        print("all detail are required")
    }
}

showError(error: .username)
showError(error: .email)
showError(error: .password)
showError(error: .name)
showError(error: .age)

//: [Next](@next)
