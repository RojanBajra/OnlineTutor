//
//  TestStartViewController.swift
//  OnlineTutor
//
//  Created by Rojan Bajracharya on 5/29/20.
//  Copyright © 2020 Rojan Bajracharya. All rights reserved.
//

import UIKit

class TestStartViewController: UIViewController {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var btnTest: UIButton!
    @IBOutlet weak var viewForButton: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }

    func setupUI() {
        viewForButton.layer.cornerRadius = viewForButton.frame.width / 2
        btnTest.layer.cornerRadius = viewForButton.frame.width / 2
    }
    
    @IBAction func btnTest(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(identifier: "TestVC") as! TestViewController
        vc.isAppearingFromHomePage = true
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
