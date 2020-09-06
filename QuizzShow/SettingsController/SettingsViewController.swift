//
//  SettingsViewController.swift
//  QuizzShow
//
//  Created by Алексей Мальков on 05.09.2020.
//  Copyright © 2020 Alexey Malkov. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBAction func shuffleControl(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex{
        case 0:
            Game.shared.shuffleState = false
        case 1:
            Game.shared.shuffleState = true
        default:
            Game.shared.shuffleState = false
        }
    }
    
}
