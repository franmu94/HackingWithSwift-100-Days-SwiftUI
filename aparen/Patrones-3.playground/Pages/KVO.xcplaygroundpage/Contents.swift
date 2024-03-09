import Foundation

final class Empleado: NSObject {
    @objc dynamic var salario: Double = 0
    
    var salary: Double = 0 {
        didSet {
            print("El salario ha cambiado a \(salary)")
        }
    }
}

let empleado1 = Empleado()
empleado1.salary = 4000
empleado1.salary = 8000
empleado1.salary = 8000

empleado1.observe(\.salario, options: [.new, .old, .initial]) { empleado, value in
    print("Ha cambiado a \(value.newValue ?? 0)")
    print(empleado.salario)
}

empleado1.salario = 5000

let empleado2 = Empleado()

empleado2.observe(\.salario) { empleado, _ in
    print(empleado.salario)
}

empleado2.salario = 10000
