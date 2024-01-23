//: [Previous](@previous)

import Foundation

func showWelcome() {
    print("Welcome to my app!")
    print("By default This prints out a conversion")
    print("chart from centimeters to inches, but you")
    print("can also set a custom range if you want.")
}


let roll = Int.random(in: 1...20)



func printTimesTables(number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(number: 9)

func printTimesTables1(number: Int, end: Int){
    for i in 1...end{
        print("\(i) x \(number) is \(i * number)")
    }
}


printTimesTables1(number: 5, end: 20)

// Los datos que se crean en la funcion cuando esta ejecuta son destruidos cuando finaliza

