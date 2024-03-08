import Foundation

protocol Personaje {
    var nombre: String { get }
}

protocol Hablador {
    var dialogo: String { get set }
    func hablar()
}

extension Hablador {
    func hablar() {
        print(dialogo)
    }
}

protocol Ataque {
    var ataque: Int { get }
    func atacar() -> Int
}

extension Ataque {
    func atacar() -> Int {
        Int.random(in: ataque / 2 ... ataque)
    }
}

enum Armas: Int {
    case espada = 3, hacha = 4, arco = 2, magia = 1
}

protocol Armado: Ataque {
    var arma: Armas { get }
}

extension Armado {
    func atacar() -> Int {
        Int.random(in: ataque / 2 ... ataque) + arma.rawValue
    }
}

protocol Mortal {
    var muerto: Bool { get }
    var vida: Int { get set }
}

extension Mortal {
    var muerto: Bool {
        vida <= 0
    }
}

struct Tendero: Personaje {
    let nombre: String
}

struct OgroBorracho: Mortal {
    var vida = 10
}

struct Gallina: Ataque {
    let ataque = 2
}

struct Soldado: Personaje, Mortal, Armado, Hablador {
    var nombre: String
    var vida: Int
    var arma: Armas
    var ataque: Int
    var dialogo: String
}

struct Monje: Personaje, Hablador {
    var nombre: String
    var dialogo: String
}

struct Enemigo: Personaje, Mortal, Armado {
    var nombre: String
    var vida: Int
    var ataque: Int
    var arma: Armas
}
