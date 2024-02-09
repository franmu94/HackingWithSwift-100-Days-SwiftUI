//: [Previous](@previous)

import Foundation

struct Car{
    
    let model: String
    let numberOfSeats: Int
    
    private(set) var currentGear = 0
    
    mutating func upgear() {
        if currentGear < 6{
            currentGear += 1
        } else{
            print("There is not a higher gear than 6")
        }
    }
    
    mutating func downgear() {
        if currentGear > -1{
            currentGear -= 1
        } else{
            print("There is not a lower gear than -1 (back)")
        }
    }
}


struct Car_2 {
    let model: String
    let numberOfSeats: Int
    
    enum Gear {
        case backward, neutral, first, second, third, fourth, fifth, sixth
    }
}
