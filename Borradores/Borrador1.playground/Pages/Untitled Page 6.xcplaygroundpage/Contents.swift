//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

var a = (pow(3,2))


"153".map{ pow(Double( String($0))!, 3) }.reduce(0, +)



String(Int(añadido))




func isSumOfCubes(_ s: String) -> String {
    
    var arrOfStrings = [String]()
    var añadido = ""

    for character in s+"*" {
        guard character.isNumber else {
            if añadido != "" {
                arrOfStrings.append(String(Int(añadido)!))
                añadido = ""
            }
            continue
        }
        añadido += String(character)
        if añadido.count == 3 {
            arrOfStrings.append(String(Int(añadido)!))
            añadido = ""
        }
    }
    
    var x = arrOfStrings.filter{ (s: String) -> (Bool) in s.map{ pow(Double( String($0))!,3) }.reduce(0, +) == Double(s)
    }
    if x.isEmpty{
        return "Unlucky"
    }
    
    return "\(x.joined(separator: " ")) \(x.map{ Int($0)! }.reduce(0,+)) Lucky"
    
}
