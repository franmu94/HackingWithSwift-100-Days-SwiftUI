//: [Previous](@previous)

import Foundation

func numberOfLetters<T: StringProtocol>(cadena: T) -> Int {
    cadena.count
}


numberOfLetters(cadena: "Taylor Swift".dropLast(6))
