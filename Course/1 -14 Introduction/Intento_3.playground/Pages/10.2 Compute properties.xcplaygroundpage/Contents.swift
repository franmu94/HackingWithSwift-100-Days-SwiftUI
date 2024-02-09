//: [Previous](@previous)

import Foundation

struct Employee {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    var vacationRemaining: Int {
        vacationAllocated - vacationTaken
    }
}

var archer = Employee(name: "Sterling Archer", vacationAllocated: 14)
archer.vacationTaken += 4
print(archer.vacationRemaining)
archer.vacationTaken += 3
print(archer.vacationRemaining)



struct Employee2 {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationTaken
        }
        
        set {
            vacationAllocated = vacationTaken + newValue
        }
    }
}

var archor = Employee2(name: "Sterling Archer", vacationAllocated: 14)
archor.vacationTaken = 11
archor.vacationRemaining = 5

print(archor.vacationAllocated)
print(archor.vacationRemaining)



struct Vida {
    let name: String
    var edad: Int
    var esperanzaDeVida: Int
    var añosPorVivir: Int {
        get {
            esperanzaDeVida - edad
        }
        set{
            esperanzaDeVida = edad + newValue
            print("ahora mi espernza de vida es: \(esperanzaDeVida)")
        }
    }
}

var fran = Vida(name: "Fran", edad: 29, esperanzaDeVida: 80)
fran.añosPorVivir = 60

