import Foundation

final class Test {
    var callbackfunc: ((UInt32) -> Void)?
    var callbacks: [() -> Void] = []
    var x = 10
    
    func lanzarTemporizador(time: UInt32, callback: @escaping () -> Void) {
        sleep(time)
        callbacks.append(callback)
    }
    
    func lanzarTemporizador(time: UInt32, callback: @escaping (UInt32) -> Void) {
        sleep(time)
        callbackfunc = callback
    }
    
    func lanzarTemporizadorXPlus(time: UInt32) {
        lanzarTemporizador(time: time) { [weak self] in
            guard let wself = self else { return }
            wself.x += 1
            print("X vale ahora \(wself.x)")
        }
        
        lanzarTemporizador(time: time) { [unowned self] in
            self.x += 1
            print("X vale ahora \(self.x)")
        }
    }
}

var paco: (() -> Void)?

do {
    let test = Test()
    test.lanzarTemporizadorXPlus(time: 3)
    paco = test.callbacks.first
}

paco?()

