//
//  DisplaySelectedViewController.swift
//  OnlineTutor
//
//  Created by Rojan Bajracharya on 5/23/20.
//  Copyright © 2020 Rojan Bajracharya. All rights reserved.
//

import UIKit

class DisplaySelectedViewController: UIViewController {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var txtCharacter: UITextField!
    @IBOutlet weak var lblCharacter: UILabel!
    @IBOutlet weak var btnDisplay: UIButton!
    @IBOutlet weak var btnHowItWorks: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        setupUI()
    }
    
    func setupUI() {
        lblTitle.font = UIFont.boldSystemFont(ofSize: 30.0)
        btnDisplay.backgroundColor = ColorForApp.shareInstance.colorPrimary()
        btnDisplay.setTitleColor(UIColor.white, for: .normal)
    }
    
    @IBAction func btnDisplay(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(identifier: "DisplaySelectedARVC") as! DisplaySelectedARViewController
        vc.nameToDisplay = txtCharacter.text!
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func btnHowItWorks(_ sender: Any) {
    }

}

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }

    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
