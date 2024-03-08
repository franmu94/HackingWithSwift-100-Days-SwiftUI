import Foundation

struct Empleado {
    let id: Int
    let name: String
}

extension Empleado: Equatable {
    static func == (l: Empleado, r: Empleado) {
        l.id == r.id
    }
    
    static func != (l: Empleado, r: Empleado) {
        l.id != r.id
    }
}

let emp1 = Empleado(id: 1888, name: "Julio César")
let emp2 = Empleado(id: 1888, name: "Julio")

emp1 == emp2
emp1 != emp2

let punto1 = CGPoint(x: 100, y: 50)
var punto2 = CGPoint(x: 125, y: 75)
var punto3 = CGPoint(x: 200, y: 100)

extension CGPoint {
    static func + (l: CGPoint, r: CGPoint) -> CGPoint {
        CGPoint(x: l.x + r.x, y: l.y + r.y)
    }
    
    static func += (l: inout CGPoint, r: CGPoint) {
        l = CGPoint(x: l.x + r.x, y: l.y + r.y)
    }
}

punto1 + punto2
punto2 += punto3

precedencegroup MultiMutiply {
    associativity: left
    higherThan: AdditionPrecedence
}

infix operator **: MultiMutiply

extension Int {
    static func ** (l: Int, r: Int) -> Int {
        (l*2) + (r*2)
    }
}

2 ** 3
