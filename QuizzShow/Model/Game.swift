//
//  Game.swift
//  QuizzShow
//
//  Created by Алексей Мальков on 01.09.2020.
//  Copyright © 2020 Alexey Malkov. All rights reserved.
//

import Foundation

class Game{
    
    static let shared = Game()
    private let gameSession = GameSession()
    private(set) var statistics: [Statistic] {
        didSet {
            gameSession.save(statics: statistics)
        }
    }
    
    private init() {
        self.statistics = gameSession.load()
    }
    
    func addStatistic(_ record: Statistic) {
        statistics.append(record)
    }
    
    func clearStatistic() {
        statistics = []
    }
}
