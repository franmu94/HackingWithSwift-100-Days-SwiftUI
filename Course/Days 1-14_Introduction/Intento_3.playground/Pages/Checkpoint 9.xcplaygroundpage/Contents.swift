//: [Previous](@previous)

import Foundation

func getNumber1(in array: [Int?]?) -> Int {
    let random = Int.random(in: 1...100)
    return (array?.randomElement()! ?? random)
}


func getNumber2(in array: [Int?]?) -> Int? {
    let random = Int.random(in: 1...100)
    return array!.randomElement()!
}


getNumber(in: [nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil])


func getNumber(in array: [Int?]?) -> Int {
    let random = Int.random(in: 1...100)
    print(array?.randomElement())
    print(array?.randomElement() ?? random) // porque vale nil?? 
    return (array?.randomElement() ?? random) ?? 777
}


var c = getNumber2(in: [1,2,3,4,5,6,7,nil])


print(type(of: c))
