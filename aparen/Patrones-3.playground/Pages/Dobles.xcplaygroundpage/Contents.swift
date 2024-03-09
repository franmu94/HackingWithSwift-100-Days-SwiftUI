import Foundation

struct Persona {
    var name: String
    var yearsOld: Int
}

protocol DataInteractor {
    func loadData() -> [Persona]
}

struct Interactor: DataInteractor {
    private let datos: [Persona] = [
        Persona(name: "Julio", yearsOld: 48),
        Persona(name: "Paco", yearsOld: 27),
        Persona(name: "Verónica", yearsOld: 38),
        Persona(name: "Mari Puri", yearsOld: 20),
        Persona(name: "Antonio", yearsOld: 30)
    ]
    
    func loadData() -> [Persona] {
        datos
    }
}

struct TestInteractor: DataInteractor {
    private let datosTest: [Persona] = [
        Persona(name: "Julio", yearsOld: 48),
        Persona(name: "Verónica", yearsOld: 38)
    ]
    
    func loadData() -> [Persona] {
        datosTest
    }
}

final class Presentation {
    var personas: [Persona]
    
    let interactor: DataInteractor
    
    init(interactor: DataInteractor = Interactor()) {
        self.interactor = interactor
        self.personas = interactor.loadData()
    }
    
    func showMeTheYearsOld(name: String) -> Int? {
        if let persona = personas.first(where: { $0.name == name }) {
            persona.yearsOld
        } else {
            nil
        }
    }
    
    func birthdate(name: String) {
        if let index = personas.firstIndex(where: { $0.name == name }) {
            personas[index].yearsOld += 1
        }
    }
}

extension Presentation {
    static let test = Presentation(interactor: TestInteractor())
}

let presentation = Presentation()
presentation.showMeTheYearsOld(name: "Julio")
presentation.showMeTheYearsOld(name: "Antonio")
presentation.birthdate(name: "Antonio")
presentation.showMeTheYearsOld(name: "Antonio")

let presentationTest = Presentation.test
presentationTest.showMeTheYearsOld(name: "Julio")
presentationTest.showMeTheYearsOld(name: "Antonio")

