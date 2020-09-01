//
//  Quizz.swift
//  QuizzShow
//
//  Created by Алексей Мальков on 31.08.2020.
//  Copyright © 2020 Alexey Malkov. All rights reserved.
//

import UIKit

class Quizz: UIViewController {
    
    let allQuestions = QuestionBank()
    var pickedAnswer : Bool = false
    var questionNumber : Int = 0
    var score : Int = 0
    
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
    
    func updateUI() {
        
        scoreLabel.text = "Очков: \(score)"
      
    }
    
    func nextQuestion() {
        
        if questionNumber <= 12 {
        questionLabel.text = allQuestions.list[questionNumber].questionText
            
            updateUI()
        }
        else {
            
            let record = Statistic(date: Date(), score: score)
            Game.shared.addStatistic(record)
            
            dismiss(animated: true, completion: nil)
            
        }
    }
    
    func checkAnswer() {
        
        let correctAnswer = allQuestions.list[questionNumber].answer
        
        if correctAnswer == pickedAnswer {
            
            score = score + 1
        
        }
        else {
            print("Неправильный ответ")
        }
    }
    
}
