//: [Previous](@previous)

import Foundation

func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()


func areLettersIdentical1(string1: String, string2: String) -> Bool {
    return string1.sorted() == string2.sorted()
}

// se puede omitir el return si solo hay una linea de codigo


func areLettersIdentical2(string1: String, string2: String) -> Bool{
    string1.sorted() == string2.sorted()
}

areLettersIdentical2(string1: "qwerty", string2: "ytrewq")


func pythagoras(a: Double, b: Double) -> Double {
    sqrt(a*a + b*b)
}

pythagoras(a: 3, b: 4)

// return se puede usar para acabar una funcion aunque esta no tenga que devolver nada en su definicion


