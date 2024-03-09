import Foundation

extension Notification.Name {
    static let llamada = Notification.Name("LLAMADA")
}

final class Emisora {
    var timer: Timer?
    
    init(seconds: TimeInterval) {
        self.timer = Timer.scheduledTimer(withTimeInterval: seconds, repeats: false) { timer in
            NotificationCenter.default.post(name: .llamada,
                                            object: "Mensaje secreto")
        }
    }
}

final class Receptora {
    var mensaje: String = "" {
        didSet {
            print("Nuevo mensaje: \(mensaje).")
        }
    }
    
    init() {
        NotificationCenter.default.addObserver(forName: .llamada,
                                               object: nil, queue: .main) { notification in
            if let msg = notification.object as? String {
                self.mensaje = msg
            }
        }
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self,
                                                  name: .llamada,
                                                  object: nil)
    }
}

let emisora1 = Emisora(seconds: 10)
let receptora1 = Receptora()

