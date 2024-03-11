//
//  ScoreLogic.swift
//  UIKiyJueves
//
//  Created by Fran Malo on 10/3/24.
//

import Foundation


final class ScoreLogic {
    static let shared = ScoreLogic()
    
    let interactor: DataInteractor
    
    var scores: [Score]
    
    init(interactor: DataInteractor = ScoreInteractor.shared) {
        self.interactor = interactor
        self.scores = (try? interactor.getScores()) ?? []
    }
    
    func getScore (indexPath: IndexPath) -> Score {
        scores[indexPath.row]
    }
    
    func removeScore(indexPath: IndexPath) {
        scores.remove(at: indexPath.row)
    }
    
    func moveScore(indexPath: IndexPath, to: IndexPath) {
        scores.swapAt(indexPath.row, to.row)
    }

    
    func updateScore(score: Score) {}

    
}


let score = ScoreLogic()
let scoreTest = ScoreLogic(interactor: ScoreInteractorTest())
