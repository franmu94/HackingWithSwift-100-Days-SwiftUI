//: [Previous](@previous)

import Foundation


class User_1 {
    var username = "Anonymous"
}

var user1 = User_1()

var user2 = user1

user2.username = "Taylor"

print(user1.username)
print(user2.username)

class User {
    var username = "Anonymous"
    
    func copy() -> User {
        let user = User()
        user.username = username
        return user
    }
}
