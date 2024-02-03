import Foundation



func count1<Number>(numbers: [Number]) {
    
    //let total = numbers.reduce(0, +)
    print("Total is ...")
}


//count(numbers: [1, 2, 3])  Esto no funciona porque el tipo pude ser cualquiera y no todo acepta el operador +


// En el ejemplo anterior puede paracer que no tiene ventaja respecto a poner que el tipo admitido es Any
// pero si que la tiene cuando se restringe el tipo del generic

// a medida que se añaden mas restricciones al tipo del generico, se opbtiene mas funcionalidad


func count2<Number: Numeric>(numbers: [Number]) {
    
    let total = numbers.reduce(0, +)
    print("Total is \(total)")
}
count2(numbers: [1, 2, 3])

// ¿Porque no usar un protocolo?


/*
func count(numbers: [Numeric]) {
    let total = numbers.reduce(0, +)
    print("Total is \(total)")
}
*/
// la razon por la que esto no compila es porque numeric rcoge un gran abanico de tipos que no son intercambiables, por lo que no pueden estar en ek mismo array


// static dispatch

protocol Prioritized {
    var priority: Int { get }
    
    func alertIfImportant()
}


struct Work: Prioritized {
    let priority: Int
    
    func alertIfImportant() {
        if priority > 3 {
            print("I'm important work")
        }
    }
}

struct Document: Prioritized {
    let priority: Int
    
    func alertIfImportant() {
        if priority > 5 {
            print("I'm an important document")
        }
    }
}


// ahora vemos que si se pude poner en el tipo de parametro de forma "normal":

func checkPriority1(of item: Prioritized) {
    print("Checking priority...")
    
    item.alertIfImportant()
}
checkPriority1(of: Work(priority: 4))
// lo anterior se llama "dynamic dispatch". Esta abierto a cualquier tipo de dato que este bajo el protocolo Prioritized. Cuando el compilador construya ese codigo no puede saber que tipo es en concreto, lo sabra cuando ejecute.


//ahora tenemos "satatic dispatch"

func checkPrioritu2<P: Prioritized>(of item: P) {
    print("Checking priority...")
    item.alertIfImportant()
}

// ahora sabe en tiempo de ejecucion que tipo de dato es y esto supone que sea mucho mas optimo




