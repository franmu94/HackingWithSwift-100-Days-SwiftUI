//: [Previous](@previous)

import Foundation

class User {
    var name = "Paul"
}

let user = User()
user.name = "Taylor"
print(user.name)


var user_1 = User()
user_1.name = "Taylor"
user_1 = User()

print(user_1.name)
