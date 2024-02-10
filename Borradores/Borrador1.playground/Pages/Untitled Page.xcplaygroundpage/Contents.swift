//: [Previous](@previous)

import Foundation

func isSumOfCubes(_ s: String) -> String {
    
    var arrOfStrings = [String]()
    var añadido = ""

    for character in s+"*" {
        guard character.isNumber else {
            if añadido != "" {
                arrOfStrings.append((añadido))
                añadido = ""
            }
            continue
        }
        añadido += String(character)
        if añadido.count == 3 {
            arrOfStrings.append((añadido))
            añadido = ""
        }
    }
  
    var x = arrOfStrings.filter{ (s: String) -> (Bool) in s.map{ pow(Double( String($0))!,3) }.reduce(0, +) == Double(s)}
    
    return x.isEmpty ? "Unlucky" : "\(x.joined(separator: " ")) \(x.map{ Int($0)! }.reduce(0,+)) Lucky"
}
