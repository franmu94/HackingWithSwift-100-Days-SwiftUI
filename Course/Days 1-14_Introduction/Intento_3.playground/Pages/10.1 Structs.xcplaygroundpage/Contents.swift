//: [Previous](@previous)

import Foundation

struct Albun {
    let title: String
    let artist: String
    let year: Int
    
    func printSumary(){
        print("\(title) (\(year)) by \(artist)")
    }
}


let red = Albun(title: "red", artist: "Taylor Swift", year: 2012)
let wings = Albun(title: "wings", artist: "BTS", year: 2016)

print(red.title)

red.printSumary()

//--------------

struct Employee{
    let name: String
    var vacationRemaning: Int
    
    mutating func teakeVacation(days: Int) {
        if vacationRemaning > days {
            vacationRemaning -= days
            print("I'm going on vacation")
            print("Days remaining: \(vacationRemaning)")
        } else {
            print("Ops the arent enough days remaining")
        }
    }
}


