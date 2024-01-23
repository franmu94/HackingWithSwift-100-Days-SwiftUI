//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)


struct Game {
    var score = 0 {
        didSet {
            print ("Score is now \(score)")
        }
    }
}

var game = Game()

game.score += 10
game.score -= 3
game.score += 1


game.score = 3


//---------------

struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is \(contacts)")
            print("Current Vvalue is \(newValue)")
        }
        
        didSet{
            print("There are now \(contacts.count) contacts.")
            print("Old value was \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Adrian E")
app.contacts.append("Allen w")
app.contacts.append("Ish S")




