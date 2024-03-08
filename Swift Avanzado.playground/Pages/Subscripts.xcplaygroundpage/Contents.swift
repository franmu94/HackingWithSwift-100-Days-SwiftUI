import Foundation

let array = [2,5,6,5,4,5]
array[2]

struct DiaSemana {
    private let dias = ["Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado", "Domingo"]
    
    subscript(i: Int) -> String? {
        if i > 0 && i <= dias.count {
            dias[i - 1]
        } else {
            nil
        }
    }
}

let dia1 = DiaSemana()
dia1[3]
dia1[7]
