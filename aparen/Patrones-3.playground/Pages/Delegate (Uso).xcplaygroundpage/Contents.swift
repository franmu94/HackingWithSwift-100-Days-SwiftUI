import Foundation
import AVKit

final class GameSFX: NSObject, AVAudioPlayerDelegate {
    var player: AVAudioPlayer?
    
    init?(file: String) {
        guard let url = Bundle.main.url(forResource: file, withExtension: "mp3") else { return nil }
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.prepareToPlay()
        } catch {
            print(error)
            return nil
        }
    }
    
    func play() {
        player?.delegate = self
        player?.play()
    }
    
    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        if flag {
            print("Correcto")
            player.delegate = nil
        }
    }
}

let sfx1 = GameSFX(file: "groan1")
sfx1?.play()
let sfx2 = GameSFX(file: "pitido")
