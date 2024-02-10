//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

var arr = [[String]]()

for i in (0...4) {
    arr.append([String]())
    for j in (0...8) {
        arr[i].append(" ")
        if i*2 == j {
            arr[i][j] = "*"
        }
    }
}

arr.forEach{ print($0) }

//arr.map{ $0.reduce("",+) }.forEach{ print($0) }

var a = arr[0].reduce("", +)
