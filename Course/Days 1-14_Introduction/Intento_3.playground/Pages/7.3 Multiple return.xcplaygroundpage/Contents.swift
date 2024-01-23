//: [Previous](@previous)

import Foundation

// Se podria usar un Array

func getUser() -> [String] {
    ["Taylor", "Swift"]
}

let user = getUser()
print("Name: \(user[0]) \(user[1])")


// Tambien se podria usar un diccionario

func getUser2() -> [String: String] {
    [
        "firstName": "Taylor",
        "lastName": "Swift"
    ]
}

let user2 = getUser2()
print("Name: \(user2["firstName", default: "Anonymous"]) \(user2["lastName", default: "Anonymous"])")


// Lo mejor es usar tuplas:

func getUser3() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}
let user3 = getUser3()

print("Name: \(user3.firstName) \(user3.lastName)")

// Se puede acortar

func getUser4() -> (firstName: String, lastName: String) {
    ("Taylor", "Swift")
}

// Y mas:

func getUser5() -> (String,String) {
    ("Taylor", "Swift")
}
let userf = getUser5()

print("Name: \(userf.0) \(user3.1)")

let (firstName, lastName) = getUser()
print("Name: \(firstName) \(lastName)")




