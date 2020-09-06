//
//  QuestionBank.swift
//  QuizzShow
//
//  Created by Алексей Мальков on 31.08.2020.
//  Copyright © 2020 Alexey Malkov. All rights reserved.
//

import Foundation

class QuestionBank {
    
    var list = [Question]()
    
    init() {
        
        let item = Question(text: "Запрещен ли день святого Валентина в Саудовской Аравии?", correctAnswer: true)
        
        list.append(item)
        
        list.append(Question(text: "Зеленая ли кровь у слизня?", correctAnswer: true))
        
        list.append(Question(text: "Примерно четверть человеческих костей находится в ногах?", correctAnswer: true))
        
        list.append(Question(text: "Общая площадь поверхности двух легких человека составляет примерно 70 квадратных метров?", correctAnswer: true))
        
        list.append(Question(text: "Если вы случайно сбили животное своей машиной в Западной Вирджинии, можете ли вы взять его домой, чтобы съесть?", correctAnswer: true))
        
        list.append(Question(text: "Может ли страус закапываться головой в песок?", correctAnswer: false))
        
        list.append(Question(text: "Строили ли рабы пирамиды в Египте?", correctAnswer: false))
        
        list.append(Question(text: "Вы можете вести корову вниз по лестнице, но не вверх по лестнице?", correctAnswer: false))
        
        list.append(Question(text: "Google изначально назывался Backrub?", correctAnswer: true))
        
        list.append(Question(text: "Король Артур был реальным человеком?", correctAnswer: false))
        
        list.append(Question(text: "Ни один кусок квадратной бумаги не может быть сложен пополам более 7 раз?", correctAnswer: false))
        
        list.append(Question(text: "Шоколад поражает сердце и нервную систему собаки?", correctAnswer: true))
        
        list.append(Question(text: "Алкоголь токсичен для кошек?", correctAnswer: true))
        
        if Game.shared.shuffleState == true {
            list.shuffle()
        } else {
            return
        }
    }
}
