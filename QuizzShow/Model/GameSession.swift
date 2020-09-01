//
//  GameSession.swift
//  QuizzShow
//
//  Created by Алексей Мальков on 01.09.2020.
//  Copyright © 2020 Alexey Malkov. All rights reserved.
//

import Foundation

class GameSession {
    private let encoder = JSONEncoder()
    private let decoder = JSONDecoder()
    
    private let key = "statistics"
    
    func save(statics: [Statistic]) {
        do {
            let data = try encoder.encode(statics)
            UserDefaults.standard.set(data, forKey: key)
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func load() -> [Statistic] {
        guard let data = UserDefaults.standard.data(forKey: key) else { return [] }
        
        do {
            return try decoder.decode([Statistic].self, from: data)
        } catch {
            print(error.localizedDescription)
            return []
        }
    }
}
