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
    
    
    
}
