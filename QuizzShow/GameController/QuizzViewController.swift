//
//  QuizzViewController.swift
//  QuizzShow
//
//  Created by Алексей Мальков on 31.08.2020.
//  Copyright © 2020 Alexey Malkov. All rights reserved.
//

import UIKit

class QuizzViewController: UIViewController {
    
    let allQuestions = QuestionBank.shared
    var pickedAnswer: Bool = false
    var questionNumber: Int = 0
    var score: Int = 0
    var questionNumberState = Game.shared.questionNumberState
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionNumberLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(scoreTraker), name: NSNotification.Name(rawValue: "scoreNotification"), object: nil)
        
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
        
        if questionNumber <= questionNumberState + 12 {
        questionLabel.text = allQuestions.list[questionNumber].questionText
            print("тут \(questionNumberState)")
            updateUI()
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "scoreNotification"), object: nil)
            print(allQuestions.list)
        }
        else {
            
            let record = Statistic(date: Date(), score: score)
            Game.shared.addStatistic(record)
            
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
