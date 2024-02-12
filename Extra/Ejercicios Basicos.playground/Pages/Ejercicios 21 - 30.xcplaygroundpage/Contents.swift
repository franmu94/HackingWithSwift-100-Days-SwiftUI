import Foundation

/*
 Ejercicio 21:
 A partir del radio de un círculo introducido en una constante, calcula
 el área de dicho círculo.
 */

let radio = 5.2

let area = Double.pi * radio * radio


/*
 Ejercicio 22:
 A partir de una constante numero, verifica si dicho valor es a la vez
 múltiplo de 3 y de 5.
 */
let numero = 31
let resultado22 = numero%3 == 0 && numero%5 == 0 ? "Es multiplo de 3 y 5" : "No es multilpo de 3 y 5"
resultado22


/*
 Ejercicio 23:
 A partir de una constante, establece si el número es par o impar.
 */
let num = 22
let esPar = num%2 == 0 ? "El numero es par" : "El numero es impar"


/*
 Ejercicio 24:
 A partir de una constante, genera un flujo capaz de imprimir la tabla de
 multiplicar hasta el 10 de dicho número.
 */

let numeroParaTabla = 5

for i in 1...10 {
    print("\(numeroParaTabla) x \(i) = \(numeroParaTabla * i)")
}


/*
 Ejercicio 25:
 Realiza un programa que sea capaz de determinar si un número entero
 positivo cualquiera es un número primo o no.
 */

Ambito: do {   // Hacemos este ambito para poder hacer break cuando se determine
    
    let n = 121
    
    if n <= 0 {
        print("El numero es menor de 0")
        break Ambito
    }
    
    if n <= 3 {
        print("El numero es primo")
        break Ambito
    }
    
    if n%2 == 0 || n%3 == 0 {
        print("El numero no es primo")
        break Ambito
    }
    
    var i = 5
    
    while i * i <= n {
        if n%i == 0 || n % (i+2) == 0 {
            print("El numero no es primo")
            break Ambito
        }
        i += 6
    }
    print("El numero es primo")
    
}


/*
 Ejercicio 26:
 A partir de una constante, realiza un algoritmo capaz de devolver el
 total de números de la secuencia de Fibonacci, en orden.
 */

let fibonacci = 8
var secuencia = [1,2]

for i in 1...8 {
    var añadir = secuencia.last! + secuencia[secuencia.count-2]
    secuencia.append(añadir)
}
secuencia


/*
 Ejercicio 27:
 Dada una constante crea un algoritmo capaz de calcular el factorial de
 un número indicado:
 */
let numeroFact = 7
var resultado27 = 1
for i in 1...numeroFact {
    resultado27 *= i
}
resultado27

/*
 Ejercicio 28:
 Dado un array de números enteros en una constante, haz un algoritmo que
 sea capaz de contar el total de números primos.
 */


let arrNumerosEnteros = [25,1,2,3,4,5,6,7,8,9,10,22,21,4,2,1,6,7,3,2,5,7,7,9,3,3]
var primosCount = 0

Ambito: for n in arrNumerosEnteros {
    
    if n <= 0 {
        //print("El numero es menor de 0")
        continue
    }
    
    if n <= 3 {
        //print("El numero es primo")
        primosCount += 1
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
    primosCount += 1
}
primosCount


/*
 Ejercicio 29:
 Dado un array de números enteros en una constante, haz un algoritmo que
 sea capaz de sumar todos los números que hay.
 */

let arrNumerosEnteros2 = [1,2,3,4,5,6,7,8,9,10,22,21,4,2,1,6,7,3,2,5,7,7,9,3,3]
var suma = 0
for i in arrNumerosEnteros2 {
    suma += i
}
suma



/*
 Ejercicio 30:
 A partir de un número constante, crea un flujo capaz de discernir
 mediante mensajes si un número es positivo, negativo o cero.
 */

let numeroConstante = -7

if numeroConstante > 0 {
    print("El numero es positivo")
} else if numeroConstante < 0 {
    print("El numero es negativo")
} else {
    print("El nunero es 0")
}



/*
 Ejercicio 31:
 A partir de la nota de un alumno, clasifica su puntuación mediante
 grados de la A a la F. La equivalencia de la nota de 1 a 10 es:
 */
let nota = 7
var resultado31 = ""

switch nota {
case 0:
    resultado31 = "F"
case 1...2:
    resultado31 = "E"
case 3...4:
    resultado31 = "D"
case 5...6:
    resultado31 = "C"
case 7...8:
    resultado31 = "B"
case 9...10:
    resultado31 = "A"
default:
    resultado31 = "nota erroena"
}
resultado31


