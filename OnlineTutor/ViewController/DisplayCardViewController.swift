//
//  DisplayCardViewController.swift
//  OnlineTutor
//
//  Created by Rojan Bajracharya on 5/23/20.
//  Copyright © 2020 Rojan Bajracharya. All rights reserved.
//

import UIKit

class DisplayCardViewController: UIViewController {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var imgCard: UIImageView!
    @IBOutlet weak var btnScan: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
    
    func setupUI() {
        lblTitle.text = "How it works?"
        lblDescription.text = "Click on the button below to open up your camera. Then show the card that you have and you will see the 3d image of the character. The card must be of the following type."
        imgCard.image = UIImage.init(named: "two.jpg")
        btnScan.backgroundColor = ColorForApp.shareInstance.colorPrimary()
        btnScan.setTitleColor(UIColor.white, for: .normal)
        
        lblTitle.font = UIFont.boldSystemFont(ofSize: 30.0)
        imgCard.layer.borderWidth = 3
        imgCard.layer.borderColor = UIColor.black.cgColor
        imgCard.layer.cornerRadius = 20
        btnScan.layer.cornerRadius = 10
    }

}
