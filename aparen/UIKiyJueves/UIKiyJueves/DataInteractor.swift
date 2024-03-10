//
//  DataInteractor.swift
//  UIKiyJueves
//
//  Created by Fran Malo on 10/3/24.
//

import Foundation

protocol DataInteractor {
    func getScores() throws -> [Score]
}


struct ScoreInteractor: DataInteractor, JSONLoader {
    
    static let shared = ScoreInteractor()
    
    private init() {}

    func getScores() throws -> [Score] {
        guard let url = Bundle.main.url(forResource: "scoresdata", withExtension: "json") else {
            return []
        }
        return try getJSON(url: url, type: [Score].self)
    }
}


