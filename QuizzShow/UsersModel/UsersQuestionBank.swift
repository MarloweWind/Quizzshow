//
//  UsersQuestionBank.swift
//  QuizzShow
//
//  Created by Алексей Мальков on 07.09.2020.
//  Copyright © 2020 Alexey Malkov. All rights reserved.
//

import Foundation
import UIKit

class UsersQuestionBank {
    
    var list = [UsersQuestion]()
    
    init() {

        let question = UsersGameSession.shared
        
        let item = UsersQuestion(text: question.questionText, correctAnswer: question.answer)
        
        list.append(item)
        
    }
}
