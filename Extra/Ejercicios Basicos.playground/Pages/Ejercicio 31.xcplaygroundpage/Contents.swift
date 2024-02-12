import Foundation

/*
 Ejercicio 31:
 Construye un array con al menos 100 números aleatorios de entre 1 y 100
 y luego filtra este para obtener como resultado solo aquellos números
 que son primos entre los 100 que había al principio.
 */

var randomArr = [Int]()
for _ in 1...100 {
    randomArr.append(Int.random(in: 1...100))
}


Ambito: for n in randomArr {
    
    if n <= 0 {
        //print("El numero es menor de 0")
        continue
    }
    
    if n <= 3 {
        //print("El numero es primo")
        randomArr.remove(at: randomArr.firstIndex(of: n)!)
        continue
    }
    
    if n%2 == 0 || n%3 == 0 {
        //print("El numero no es primo")
        continue
    }
    
    var i = 5
    while i * i <= n {
        if n%i == 0 || n % (i+2) == 0 {
            //print("El numero no es primo")
            continue Ambito
        }
        i += 6
    }
    //print("El numero es primo")
    randomArr.remove(at: randomArr.firstIndex(of: n)!)

}

randomArr



