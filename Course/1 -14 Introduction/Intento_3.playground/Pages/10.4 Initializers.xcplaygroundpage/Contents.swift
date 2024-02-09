//: [Previous](@previous)

import Foundation

struct Player {
    let name: String
    let number: Int
    
    init(name: String) {
        self.name = name
        self.number = Int.random(in: 1...99)
    }
}


let fran = Player(name: "Fran")
print(fran.number)


