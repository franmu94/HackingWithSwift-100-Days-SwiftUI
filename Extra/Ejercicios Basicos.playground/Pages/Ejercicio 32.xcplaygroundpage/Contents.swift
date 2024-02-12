import Foundation


/*
 Ejercicio 32:
 Crea un diccionario por alumno con sus asignaturas y las notas de cada
 asignatura. Al menos 5 alumnos. Calcula la nota media de todos ellos en
 cada asignatura y la media de la clase.
 */

let dictClase: [String: [String:Double]] =
    ["Jaimito": ["Matematicas": 4,
                 "Filosofia": 8,
                 "Lengua": 7,
                 "Informatica": 5,
                 "Religion": 8,
                 "Biologia": 6,
                 "Educacion F.": 10],
     "Greimito": ["Matematicas": 10,
                  "Filosofia": 7,
                  "Lengua": 6,
                  "Informatica": 9,
                  "Religion": 3,
                  "Biologia": 7,
                  "Educacion F.": 10],
     "Pepito": ["Matematicas": 7,
                  "Filosofia": 4,
                  "Lengua": 2,
                  "Informatica": 4,
                  "Religion": 9,
                  "Biologia": 5,
                  "Educacion F.": 10],
     "Menganito": ["Matematicas": 4,
                  "Filosofia": 3,
                  "Lengua": 3,
                  "Informatica": 8,
                  "Religion": 6,
                  "Biologia": 7,
                  "Educacion F.": 10],
     "Jaimita": ["Matematicas": 3,
                  "Filosofia": 4,
                  "Lengua": 9,
                  "Informatica": 2,
                  "Religion": 1,
                  "Biologia": 9,
                  "Educacion F.": 10],
    ]

// Nota media de cada alumno
var dictNotamediaPorAlumno = [String: Double]()
for i in dictClase {
    var sumaNotas = 0.0
    for j in i.value.values {
        sumaNotas += j
    }
    dictNotamediaPorAlumno[i.key] = sumaNotas / Double(i.value.values.count)
}

// Nota media de la clase en total
var total = 0.0
for i in dictNotamediaPorAlumno.values {
    total += i
}
let notaMediaClase = total / Double(dictClase.count)


// Nota media de cada asignatura

let listaAsignaturas = Array(dictClase["Jaimito"]!.keys)

var dictNotaMediaAsignaturas = [String: Double]()

for i in listaAsignaturas{
    var sum = 0.0
    for j in dictClase.values{
        sum += j[i] ?? 0
    }
    dictNotaMediaAsignaturas[i] = ((sum / 5.0) * 100).rounded() / 100
}

print(dictNotaMediaAsignaturas)
