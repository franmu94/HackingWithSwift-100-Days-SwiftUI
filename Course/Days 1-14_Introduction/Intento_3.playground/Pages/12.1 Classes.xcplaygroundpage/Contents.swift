//: [Previous](@previous)

import Foundation

class Game {
    var score = 0 {
        didSet{
            print("Score is now \(score)")
        }
    }
}


var newGame = Game()
newGame.score = 10


var newGame_2 = newGame

newGame_2.score = 3

print(newGame_2.score)
print(newGame.score)
