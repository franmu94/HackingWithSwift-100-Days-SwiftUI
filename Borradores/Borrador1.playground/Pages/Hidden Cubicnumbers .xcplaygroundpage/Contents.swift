
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
    
    var x = arrOfStrings.filter{ (s: String) -> (Bool) in s.map{ pow(Double( String($0))!,3) }.reduce(0, +) == Double(s)
    }
    if x.isEmpty{
        return "Unlucky"
    }
    
    return "\(x.joined(separator: " ")) \(x.map{ Int($0)! }.reduce(0,+)) Lucky"
    
}


isSumOfCubes("qwerty")

let cadena = "aqdf&0#1xyz!22[153(777.777"

var arrOfStrings = [String]()
var añadido = ""

for character in cadena+"*" {
    
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

print(arrOfStrings)

func isCubic(s: String) -> Bool {
    let cubic = s.map{ pow(Double( String($0))!,3) }.reduce(0, +)
    return cubic == Double(s)
}

var x = arrOfStrings.filter{ (s: String) -> (Bool) in s.map{ pow(Double( String($0))!,3) }.reduce(0, +) == Double(s)
}

print(x)

["0", "1", "153"].map{ Int($0)! }.reduce(0,+)

["0"].joined(separator: " ")


"\(["0", "1", "153"].joined(separator: " ")) \(["0", "1", "153"].map{ Int($0)! }.reduce(0,+)) Lucky"
