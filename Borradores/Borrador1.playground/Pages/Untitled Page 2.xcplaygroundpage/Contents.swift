//: [Previous](@previous)

import Foundation

protocol MiProtocolo {
    var miPropiedad1: String { get  }
    var miPropiedad2: String { get set}

}

struct MiStructura: MiProtocolo {
    
    var miPropiedad1: String {
        return miPropiedad2
    }
    var miPropiedad2: String = "hola"
}


var a = MiStructura()

print(a.miPropiedad1)

print("fin")



func average<Number: Numeric>(numbers: [Number]) -> Double {
    print(type(of: numbers))
    let total = numbers.reduce(0) { (result, element) in
        return result + Double(element as! NSNumber)
    }
    
    let count = Double(numbers.count)
    let average = total / count
    
    return average
}

let result = average(numbers: [2, 5, 6, 8, 2.0])
print(result)
