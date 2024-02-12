import Foundation

/*
 Ejercicio 1:
 Crea 3 datos de ejemplo para cada tipo de dato básico en Swift.
 */

// Integer
let (int1, int2) = (2,3)
let int3 = int1 + int2

// Double
let double1 = 2.2
let double2 = 3.3
let double3 = double1 + double2

//Float
let float1 = Float(2.2)
let float2: Float = 3.3
let float3 = float1 + float2

//Booleano
let aprender = true
let olvidar = false
let desaprender = !olvidar

//Strings
let frase1 = "Hola "
let frase2 = ", mundo"+"!"
let flase3 = "\(frase1)\(frase2)"

//Character
let c1: Character = "3"
let c2: Character = "😁"
let c3: Character = "\u{1F4A9}"


/*
 Ejercicio 2:
 A partir de un número de tipo Float, otro de tipo Double y otro de tipo
 Int, crea la forma de poder sumar todos ellos.
 */
let f: Float = 3.17
let d: Double = 3.80
let i: Int = 76
// los convierto al mismo dato para poderlos sumar. los convertire a Double

let fD = Double(f) // Debido a que no hay un valor exacto para cada float en Double, se hace un redondedo:
let fDoubleRedondeado = (fD * 100).rounded() / 100

let iD = Double(i)

let suma = fDoubleRedondeado + iD + d



/*
 Ejercicio 3:
 Crea una suma segura para un dato de tipo UInt16 que permita que 65.000
 + 1.000 no de un error que cuelgue la app.
 */

let sumando1: UInt16 = 65_000
let sumando2: UInt16 = 1_000

if sumando1.addingReportingOverflow(sumando2).overflow {
    let sumaControlada = Int32(sumando1) + Int32(sumando2)
} else {
    let sumaControlada = sumando1 + sumando2
}


/*
 Ejercicio 4:
 Dada una constante N crea una operación que sume todos los números pares
 que haya entre 0 y ese valor.
 */
let N = 87

var sum = 0
for i in 1...N {
    if i % 2 == 0 {
        sum += i
    }
}
sum




/*
 Ejercicio 5:
 Dado un rango de números enteros de A a B, encuentra la forma de
 determinar si un número N está en el rango entre A y B (inclusive).
 Nota: Tanto el número N como A y B son constantes que tu defines.
 */

var NumeroA = 400
var NumeroB = 90
let numeroC = 222
if NumeroA > NumeroB {
    (NumeroA, NumeroB) = (NumeroB, NumeroA)
}

(NumeroA...NumeroB).contains(numeroC)




/*
 Ejercicio 6:
 Determina mediante if anidados si una temperatura de 0 a 40 grados es o
 no es calurosa en grupo de 10 grados que determinen frío, templado,
 calor, mucho calor.
 */
print("Ejercicio 6:")
let Temp = 33

if Temp >= 0 && Temp <= 10 {
    print("Frio")
} else if Temp > 10 && Temp <= 20{
    print("Templado")
} else if Temp > 20 && Temp <= 30{
    print("Calor")
} else if Temp > 30 && Temp <= 40{
    print("Muy caluroso")
}

/*
 Ejercicio 7:
 Haz el mismo ejercicio que el 6 pero usando switch/case.
 */
print("\nEjercicio 7:")

switch Temp {
case 0...10:
    print("Frio")
case 11...20:
    print("Templado")
case 21...30:
    print("Calor")
case 31...40:
    print("Muy caluroso")
default:
    print("Temparutara incorrecta")
}



/*
 Ejercicio 8:
 Imprime un tablero de ajedrez de 8x8 usando asteriscos y espacios.
 */
print("\nEjercicio 8:")

var linea = ""
for i in (1...8){
    for j in 1...8 {
        if i == 8 {
            linea += (j+i) % 2 == 0 ? "|*\u{0305}\u{0332}" : "| \u{0305}\u{0332}"
        } else {
            linea += (j+i) % 2 == 0 ? "|*\u{0305}" : "| \u{0305}"
        }

    }
    print(linea.appending("|"))
    linea = ""
 
}

for i in (1...8){
    for j in 1...8 {
        linea += (j+i) % 2 == 1 ? "⬛️" : "◻️"
    }
    print(linea)
    linea = ""
}


/*
 Ejercicio 9:
 Crea un rango de 1 a 100, recórrelo y devuelve cuantos números
 divisibles por 3 hay en dicho rango.
 */
var resultado = 0

for i in 1...100 {
    if i % 3 == 0{
        resultado += 1
    }
}
resultado



/*
 Ejercicio 10:
 Dado un número en una constante, determina si es un cuadrado perfecto.
 Nota: Cuadrado perfecto es un número entero que es el cuadrado de otro
 número entero. Por ejemplo, 36 es cuadrado perfecto porque 6×6 = 36.
 */

let numero = 36

let esPerfecto = sqrt(121).truncatingRemainder(dividingBy: 1) == 0

/*
 Ejercicio 11:
 Dado un array de 10 números enteros, inserta el número 3 en la posición
 5 y extrae el valor de la posición 7. Luego intercambia los valores de
 las posiciones 2 y 6 para poner al final un 10.
 */
print("\nEjercicio 11:")


var numeros = [3,0,5,9,8,9,5,2,5,7]
numeros.insert(3, at: 4)
numeros.remove(at: 6)

print(numeros)
(numeros[1], numeros[5]) = (numeros[5], numeros[1])
print(numeros)


/*
 Ejercicio 12:
 Crea una tupla para almacenar los nombres y edades de cinco personas.
 Encuentra el nombre de la persona más joven y la más vieja.
 */


let personas: [(Nombre: String, Edad: Int)] = [
    ("Juanito",34),
    (Nombre: "Pepe",Edad: 42),
    (Nombre: "Marcelo", 20),
    ("Lucas", Edad:32),
    ("Roberto",46)
]

// Damos un valor arbitrario a las variables min y max
var masJoven = personas[0]
var masViejo = personas[0]

for persona in personas {
    if masJoven.Edad > persona.Edad{
        masJoven = persona
    } else if masViejo.Edad < persona.Edad{
        masViejo = persona
    }
}

masJoven
masViejo

/*
 Ejercicio 13:
 A partir de una tupla para almacenar las dimensiones largo, ancho y alto
 de una caja, calcula e imprime el volumen de la caja.
 */

let tupla: (Double,Double,Double) =  (largo: 34.5, ancho: 22.7, alto: 23)
let volumen = tupla.0 * tupla.1 * tupla.2


/*
 Ejercicio 14:
 A partir de un diccionario de tareas y una prioridad de 1 a 5 para cada
 una de ellas, crea un algoritmo capaz de devolver un array con la lista
 de tareas ordenadas por prioridad y por orden alfabético.
 */

print("\nEjercicio 14:")

let dicTareas: [String:Int] = [
    "Limpiar la casa" : 3,
    "Ir al Gimnasio" : 2,
    "Salir a correr" : 3,
    "Trabajar en proyecto" : 4,
    "Hacer la comida" : 5,
    "Tomar medicinas" : 5,
    "Leer" : 2,
    "Revisar correo" : 4,
    "Pagar facturas" : 5,
    "Hacer compras" : 1
]
var arr2 = Array(dicTareas).sorted{ $0.0 < $1.0 }.sorted{ $0.1 > $1.1 }

// Ahora sin closures:

var arr3 = Array(dicTareas)
print("antes de ordenar")
for i in arr3 {
    print(i)
}
var haMutado = false

var indice = 0

while indice < arr3.count - 1 {
    if arr3[indice].1 < arr3[indice+1].1 {
        (arr3[indice], arr3[indice+1]) = (arr3[indice+1], arr3[indice])
        haMutado = true
    } else if arr3[indice].1 == arr3[indice+1].1 {
        if arr3[indice].0 > arr3[indice+1].0 {
            (arr3[indice], arr3[indice+1]) = (arr3[indice+1], arr3[indice])
            haMutado = true
        }
    }
    
    indice += 1
    
    if indice == arr3.count - 1 && haMutado{
        indice = 0
        haMutado = false
    }
}

print("tras ordenar")
for i in arr3 {
    print(i)
}


/*
 Ejercicio 15:
 Calcula el resultado de elevar un número x a una potencia y. No puedes
 usar las funciones predefinidas de la librería estándar de Swift.
 */

let x = 2
let y = 10
var resultado15 = 1

for _ in 1...y {
    resultado15 *= x
}
resultado15



/*
 Ejercicio 16:
 Crea un diccionario con 5 nombres de persona con el dato apellido y
 nombre separado por coma, y ordénalos de forma que estén ordenados por
 el nombre, no por el apellido.
 */
let dicNombres = [
    "Malo": "Francisco",
    "Lopez ": "Eduardo",
    "Perez": "Alberto",
    "Saiz": "Pablo",
    "Pedrejon": "Jose Maria"
]


/*
 Ejercicio 17:
 Usando un bucle while genera un algoritmo que sume 10 números aleatorios
 y devuelva su resultado.
 */

var resultado17 = 0
var cont = 1
while cont <= 10 {
    resultado17 += Int.random(in: 1...10)
    cont += 1
}
resultado17


/*
 Ejercicio 18:
 A partir de una constante edad determina si la persona está en la
 infancia, juventud, adulto, madurez o vejez. Establece tú mismo los
 rangos de edad según criterio.
 */

let edad = 45
var resultado18 = ""
switch edad {
case 0...13:
    resultado18 = "infacia"
case 14...21:
    resultado18 = "juventud"
case 22...35:
    resultado18 = "adulto"
case 35...60:
    resultado18 = "madurez"
case 60...:
    resultado18 = "vejez"
default:
    resultado18 = "edad incorrecta"
}
resultado18

/*
 Ejercicio 19:
 Almacena las primeras 10 letras del abecedario en un array y escribe un
 algoritmo que genere palabras al azar usando esas letras. Muestre 5
 palabras aleatorias.
 */
print("\nEjercicio 19:")

let arr19 = Array("abcdefghij")

for _ in 1...5{
    var palabra = ""
    for _ in 1...(Int.random(in: 1...8)){
        palabra += String(arr19[Int.random(in: 0...9)])
    }
    print(palabra)
}




/*
 Ejercicio 20:
 Implementa la fórmula que convierta grados Celsius a Fahrenheit.
 */

let celsius = 23

let farenfeiht = Double(celsius) * (9/5) + 32



