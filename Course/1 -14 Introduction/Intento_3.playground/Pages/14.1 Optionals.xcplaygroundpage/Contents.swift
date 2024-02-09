//: [Previous](@previous)

import Foundation

let opposites = [
    "Mario": "Wario",
    "Luigi": "Waluigi"
]

let marioOpposite = opposites["Mario"]
let peachOpposite = opposites["Peach"]


// marioOpposite.count  Esto da erro porque es potional y esta vacio

if let marioOposite_1 = opposites["Mario"] {
    print("Mario's opposite is \(marioOposite_1)")
} else {
    print("The optional was empty")
}

func square(number: Int) -> Int {
    number * number
}

var number: Int? = nil


if let number = number {
    print(square(number: number))
}


let tableHeight: Double? = 100
if tableHeight! > 85.0 {
    print("The table is too high.")
}

var a = [1,8,4,5].firstIndex(of: 8)
type(of: a)
