//
//  SolarSystemTableViewCell.swift
//  OnlineTutor
//
//  Created by Rojan Bajracharya on 5/25/20.
//  Copyright © 2020 Rojan Bajracharya. All rights reserved.
//

import UIKit

class SolarSystemTableViewCell: UITableViewCell {

    @IBOutlet weak var imgSolarSystem: UIImageView!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var lblTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
