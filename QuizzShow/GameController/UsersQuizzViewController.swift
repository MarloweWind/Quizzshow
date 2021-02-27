//
//  UsersQuizzViewController.swift
//  QuizzShow
//
//  Created by Алексей Мальков on 07.09.2020.
//  Copyright © 2020 Alexey Malkov. All rights reserved.
//

import UIKit

class UsersQuizzViewController: UIViewController {
    
    let allQuestions = UsersQuestionBank()
    var pickedAnswer: Bool = false
    var questionNumber: Int = 0
    var score: Int = 0
    var questionNumberState = Game.shared.questionNumberState
        
    @IBOutlet weak var questionNumberLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        nextQuestion()
    }
    
    @IBAction func answerPressed(_ sender: UIButton) {
        if sender.tag == 1 {
            pickedAnswer = true
        }
        else if sender.tag == 2 {
            pickedAnswer = false
        }
        
        checkAnswer()
        
        questionNumber = questionNumber + 1
        
        nextQuestion()
    }
    
    func updateUI(){
            
            scoreLabel.text = "Очков: \(score)"
            questionNumberLabel.text = "Вопрос номер \(questionNumber + 1)"
        }
        
        @objc func scoreTraker(){
            print("Очков: \(score)")
            print("Вопрос номер \(questionNumber + 1)")
        }
        
        func nextQuestion(){
            
            if questionNumber <= questionNumberState {
            questionLabel.text = allQuestions.list[questionNumber].questionText
                print("тут \(questionNumberState)")
                updateUI()
                print(allQuestions.list)
            }
            else {
                
                dismiss(animated: true, completion: nil)
                
            }
        }
        
        func checkAnswer(){
            
            let correctAnswer = allQuestions.list[questionNumber].answer
            
            if correctAnswer == pickedAnswer {
                
                score = score + 1
            
            }
            else {
                print("Неправильный ответ")
            }
        }
}
