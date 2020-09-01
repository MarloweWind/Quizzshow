//
//  Results.swift
//  QuizzShow
//
//  Created by Алексей Мальков on 31.08.2020.
//  Copyright © 2020 Alexey Malkov. All rights reserved.
//

import UIKit

class Results: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Game.shared.statistics.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ResultsCell", for: indexPath) as? ResultsCell

        let record = Game.shared.statistics[indexPath.row]
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        
        cell?.savedScoreLabel.text = "\(record.score)"
        cell?.timeLabel.text = dateFormatter.string(from: record.date)

        return cell!
    }


}
