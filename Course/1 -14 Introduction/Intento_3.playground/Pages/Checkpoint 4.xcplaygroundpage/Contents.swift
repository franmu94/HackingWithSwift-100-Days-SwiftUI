//: [Previous](@previous)

import Foundation

enum Squared: Error {
    case outOfBound
    case noRoot
}


func squareRoot (_ number: Int) throws -> Int {
    if number < 1 || number > 10_000{
        throw Squared.outOfBound
    }
    for i in 1...number{
        if i*i == number{
            return i
        } else if i*i > number {
            throw Squared.noRoot
        }
    }
    throw Squared.noRoot
}

do{
    print(try squareRoot(100))
}catch Squared.noRoot{
    print("no root")
}
catch Squared.outOfBound{
    print("out of bounds")
}

do{
    print(try squareRoot(101))
}catch{
    print("There was a problem")
}
