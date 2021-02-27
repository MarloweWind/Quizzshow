//
//  UsersGameSession.swift
//  QuizzShow
//
//  Created by Алексей Мальков on 07.09.2020.
//  Copyright © 2020 Alexey Malkov. All rights reserved.
//

import Foundation

class UsersGameSession {
    
    static let instance = UsersGameSession()
    static let shared: UsersGameSession = .init()
    
    private init() {}
    
    var questionText: String = ""
    var answer: Bool = true
    
}
