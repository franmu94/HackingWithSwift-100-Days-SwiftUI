import Foundation

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
        
//        self.timer = Timer(timeInterval: seconds,
//                           target: self,
//                           selector: #selector(finTimerObjC),
//                           //selector: Selector("finTimerObjC"),
//                           userInfo: nil,
//                           repeats: false)
    }
    
    func finTimer() {
        delegate?.llegoLaHora()
    }
    
    @objc func finTimerObjC() {
        delegate?.llegoLaHora()
    }
}

final class MiPantalla: RelojDelegate {
    func lanzarReloj() {
        let reloj = MiReloj(seconds: 10)
        reloj.delegate = self
    }
    
    func llegoLaHora() {
        print("Cierro la pantalla")
    }
}

let pantalla1 = MiPantalla()
pantalla1.lanzarReloj()
