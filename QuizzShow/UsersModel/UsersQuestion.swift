//
//  UsersQuestion.swift
//  QuizzShow
//
//  Created by Алексей Мальков on 07.09.2020.
//  Copyright © 2020 Alexey Malkov. All rights reserved.
//

import Foundation

struct UsersQuestion {
    
    let questionText: String
    let answer: Bool
    
    init(text: String, correctAnswer: Bool) {
        questionText = text
        answer = correctAnswer
    }
    
}
