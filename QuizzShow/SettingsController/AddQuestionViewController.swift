//
//  AddQuestionViewController.swift
//  QuizzShow
//
//  Created by Алексей Мальков on 06.09.2020.
//  Copyright © 2020 Alexey Malkov. All rights reserved.
//

import UIKit

class AddQuestionViewController: UIViewController {

    var answer: Bool = true
    var questionNumberState = Game.shared.questionNumberState
    
    @IBOutlet weak var addQuestionTextField: UITextField!
    
    @IBAction func answerStateControl(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex{
        case 0:
            answer = true
        case 1:
            answer = false
        default:
            answer = true
        }
    }
    
    @IBAction func addQuestionButton(_ sender: UIButton) {
        
        UsersGameSession.shared.answer = answer
        
        UsersGameSession.shared.questionText = addQuestionTextField.text!
        
        questionNumberState += 1

        dismiss(animated: true, completion: nil)

    }
    
}
