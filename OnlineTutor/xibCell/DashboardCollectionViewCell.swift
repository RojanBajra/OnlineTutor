//
//  DashboardCollectionViewCell.swift
//  OnlineTutor
//
//  Created by Rojan Bajracharya on 5/17/20.
//  Copyright © 2020 Rojan Bajracharya. All rights reserved.
//

import UIKit

class DashboardCollectionViewCell: UICollectionViewCell {
    
    static var identifier = "DashboardCVC"
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var viewForCVC: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
