//: [Previous](@previous)

import Foundation

// 1. Definir los posibles errores.

enum PasswordError: Error{
    case short, obvious
}

// 2. Crear una funcion que contemple al menos uno de los errores mencionados

func checkPassword(_ password: String) throws -> String {  // Cuanco indicas throw no necesariamente tienes que devolvet errores
    if password.count < 5 {
        throw PasswordError.short
    }
    
    if password == "12345" {
        throw PasswordError.obvious
    }
    
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excelent"
    }
}


// 3. Ejecutar la funcion y contemplar los erroes que puede devolver


let str1 = "12345"

do {
    let result = try checkPassword(str1)
    print("Password rating: \(result)")
} catch {
    print("there was an error")
}

do {
    let str2 = "qwerty"
    let result = try checkPassword(str2)
    print("Password rating: \(result)")
} catch {
    print("there was an error")
}

do {
    let result = try checkPassword(str1)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error.")
}





