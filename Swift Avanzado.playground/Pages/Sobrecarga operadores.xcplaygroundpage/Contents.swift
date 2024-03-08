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
