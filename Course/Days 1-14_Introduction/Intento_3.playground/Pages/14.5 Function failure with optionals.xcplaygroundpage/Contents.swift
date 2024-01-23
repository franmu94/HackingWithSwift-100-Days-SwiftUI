//: [Previous](@previous)

import Foundation

enum UserError: Error {
    case badID, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UserError.networkFailed
    return "RTY"
}

if let user = try? getUser(id: 23) {
    print("User: \(user)")
}

print("fin")



func suma1(n: Int) -> Int {
    n+1
}



do {
    try? suma1(n: "2") 
} catch{
    print("err")
}
