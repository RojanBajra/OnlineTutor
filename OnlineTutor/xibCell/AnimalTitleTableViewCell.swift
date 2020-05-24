//
//  AnimalTitleTableViewCell.swift
//  OnlineTutor
//
//  Created by Rojan Bajracharya on 5/25/20.
//  Copyright © 2020 Rojan Bajracharya. All rights reserved.
//

import UIKit

class AnimalTitleTableViewCell: UITableViewCell {

    static var identifier = "AnimalTitleTVC"
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var viewImage: UIView!
    @IBOutlet weak var imgAnimal: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
