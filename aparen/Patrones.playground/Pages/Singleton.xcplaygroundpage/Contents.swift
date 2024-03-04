import Foundation

/*:
 ## Control de acceso
 
 - open: Igual que public, pero sí puedo hacer *override* a través de herencia con clases.
 - public: Permite que el elemento sea visto por todo su ejecutable (*target*) y también por otros ejecutables que lo importen como módulo, al *target* donde estaría ese elemento de tipo public. Pero **no puedo hacer ***override*** en herencia con clases**.
 - library: Si yo tengo una API (librería) que usa dos o más dependencias en otras librerías (otros ejecutables), puedo ver estos elementos entre las distintas librerías que usa esta librería, pero no se ve fuera de la propia librería. *COMING SOON*.
 - internal: Tipo de control de acceso a elemento por defecto, que define que cualquier elemento dentro de mismo *target* (ejecutable) es accesible por todo el ejecutable, independientemente del fichero donde se encuentre o ruta.
 - fileprivate: Permite que cualquier elemento dentro del archivo . swift donde esté el elemento con este control de acceso, pueda usarlo y verlo.
 - private: No permite que nadie fuera del ámbito donde está el elemento vea o use dicho elemento.
 */

final class ConfigurationManager {
    var dark: Bool
    var language: String
    
    init() {
        self.dark = true
        self.language = "es"
    }
}

final class Screens {
    let configuration = ConfigurationManager()
    
    func modoOscuro() -> Bool {
        configuration.dark
    }
    
    func language() -> String {
        configuration.language
    }
}

let screenA = Screens()
let screenB = Screens()

screenA.modoOscuro()
screenB.modoOscuro()

screenA.configuration.dark = false

screenA.modoOscuro()
screenB.modoOscuro()

final class Configuration {
    static let shared = Configuration()
    
    var dark: Bool
    var language: String
    
    private init() {
        self.dark = true
        self.language = "es"
    }
}

final class ScreensSg {
    let configuration = Configuration.shared
    
    func modoOscuro() -> Bool {
        configuration.dark
    }
    
    func language() -> String {
        configuration.language
    }
}

let screenSA = ScreensSg()
let screenSB = ScreensSg()

screenSA.modoOscuro()
screenSB.modoOscuro()

screenSA.configuration.dark = false

screenSA.modoOscuro()
screenSB.modoOscuro()

let config = Configuration.shared

screenSA.language()
screenSB.language()

config.language = "en"

screenSA.language()
screenSB.language()

