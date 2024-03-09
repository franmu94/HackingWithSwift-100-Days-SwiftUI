import Foundation

extension String {
    func getSubstring(inicio:Int, final:Int) -> String? {
        guard !isEmpty, inicio >= 0, final < count, final > inicio else { return nil }
        let iniIndex = index(startIndex, offsetBy: inicio)
        let endIndex = index(startIndex, offsetBy: final)
        return String(self[iniIndex ... endIndex])
    }
    
    var palabras: Int {
        components(separatedBy: " ").count
    }
}

let cadena = "One ring to rule them all, one ring to find them. One ring to bring them all in the darkness bind them."

cadena.getSubstring(inicio: 15, final: 25)
"OLA K ASE, PROGRAMA O K ASE".getSubstring(inicio: 5, final: 10)

cadena.palabras
"OLA K ASE".palabras


protocol RelojDelegate {
    func llegoLaHora()
}

final class MiReloj {
    var timer: Timer?
    var delegate: RelojDelegate?
    
    init(seconds: TimeInterval) {
        self.timer = Timer.scheduledTimer(withTimeInterval: seconds, repeats: false) { timer in
            self.finTimer()
        }
    }
    
    func finTimer() {
        delegate?.llegoLaHora()
    }
}

final class MiPantalla {
    private func cosas() {
        print("Oli")
    }
    
    func lanzarReloj() {
        let reloj = MiReloj(seconds: 10)
        reloj.delegate = self
    }
}

extension MiPantalla: RelojDelegate {
    func llegoLaHora() {
        print("Cierro la pantalla")
        cosas()
    }
}

let pantalla = MiPantalla()
pantalla.lanzarReloj()
