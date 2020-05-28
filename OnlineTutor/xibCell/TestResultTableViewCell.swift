//
//  TestResultTableViewCell.swift
//  OnlineTutor
//
//  Created by Rojan Bajracharya on 5/29/20.
//  Copyright © 2020 Rojan Bajracharya. All rights reserved.
//

import UIKit

class TestResultTableViewCell: UITableViewCell {

    static let identifier = "TestResultTVC"
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblQuestion: UILabel!
    @IBOutlet weak var lblCorrect: UILabel!
    @IBOutlet weak var lblIncorrect: UILabel!
    @IBOutlet weak var viewForTestResult: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
