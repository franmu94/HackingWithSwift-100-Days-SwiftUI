import Foundation

final class Test {
    var x = 10
    
    func lanzarTemporizador(time: UInt32, msg: String) {
        sleep(time)
        print(msg)
    }
    
    func lanzarTemporizador(time: UInt32, callback: () -> Void) {
        sleep(time)
        callback()
    }
    
    func lanzarTemporizador(time: UInt32, callback: (UInt32) -> Void) {
        sleep(time)
        callback(time)
    }
    
    func lanzarTemporizadorXPlus(time: UInt32) {
        lanzarTemporizador(time: time) {
            x += 1
        }
    }
}

let test = Test()
//test.lanzarTemporizador(time: 3, msg: "Se acabó")
//test.lanzarTemporizador(time: 3) {
//    print("Se acabó")
//}
test.lanzarTemporizador(time: 3) { time in
    print("Han pasado \(time) segundos.")
}

test.x
test.lanzarTemporizadorXPlus(time: 3)
test.x
