//
//  DashboardViewController.swift
//  OnlineTutor
//
//  Created by Rojan Bajracharya on 5/17/20.
//  Copyright © 2020 Rojan Bajracharya. All rights reserved.
//

import UIKit

class DashboardViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
//    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var textTotDisplay = ["Cards", "Numbers & Letters", "Plants & Animals", "Mathematics", "Draw Numbers", "Solar System", "Test Yourself"]
    var iconsToDisplay = ["icon_flashCard", "icon_alphabet", "icon_plantsAndAnimals", "icon_maths", "icon_doodle", "icon_solarSystem", "icon_test"]
    
    let screenSize: CGRect = UIScreen.main.bounds
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
    }
    
    func setupUI() {
        
        navigationController?.navigationBar.barTintColor = ColorForApp.shareInstance.colorPrimary()
        navigationItem.title = "Online Tutor"
        
        self.collectionView.register(UINib(nibName: "DashboardCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: DashboardCollectionViewCell.identifier)
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        
//        lblTitle.textColor = ColorForApp.shareInstance.colorPrimary()
//        lblTitle.font = UIFont.boldSystemFont(ofSize: 30.0)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return textTotDisplay.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DashboardCVC", for: indexPath) as! DashboardCollectionViewCell
        
        cell.lblName.text = textTotDisplay[indexPath.row]
        cell.lblName.textColor = ColorForApp.shareInstance.colorPrimary()
//        cell.lblName.textColor = UIColor.black
        cell.lblName.font = UIFont.boldSystemFont(ofSize: 24.0)
        
        cell.viewForCVC.layer.masksToBounds = true
        cell.viewForCVC.layer.cornerRadius = 10
        cell.viewForCVC.layer.borderWidth = 3
//        cell.viewForCVC.layer.borderColor = UIColor.black.cgColor
        cell.viewForCVC.layer.borderColor = ColorForApp.shareInstance.colorPrimary().cgColor
        cell.viewForCVC.backgroundColor = UIColor.white
//        cell.viewForCVC.backgroundColor = ColorForApp.shareInstance.colorPrimary()
        
        cell.imgIcon.image = UIImage.init(named: iconsToDisplay[indexPath.row])
        
        Design.shareInstance.addDropShadow(view: cell, shadowColor: UIColor.black, opacity: 0.5, shadowOffset: CGSize(width: 2, height: 2), radius: 2)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = self.storyboard?.instantiateViewController(identifier: "DisplayCardVC") as! DisplayCardViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
}

extension DashboardViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: ((screenSize.width / 2.0) - 16), height: ((screenSize.width / 2.0) - 16))
    }
    
}
