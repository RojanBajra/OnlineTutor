//
//  MathsTableViewCell.swift
//  OnlineTutor
//
//  Created by Rojan Bajracharya on 5/26/20.
//  Copyright © 2020 Rojan Bajracharya. All rights reserved.
//

import UIKit

class MathsTableViewCell: UITableViewCell {

    static let identifier = "MathsTVC"
    @IBOutlet weak var imgShape: UIImageView!
    @IBOutlet weak var lblShapeName: UILabel!
    @IBOutlet weak var lblShapeDescription: UILabel!
    @IBOutlet weak var lblSymbol: UILabel!
    @IBOutlet weak var lblVolume: UILabel!
    @IBOutlet weak var lblSurfaceArea: UILabel!
    @IBOutlet weak var lblBaseArea: UILabel!
    @IBOutlet weak var lblLateralSurfaceArea: UILabel!
    @IBOutlet weak var viewPart: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
