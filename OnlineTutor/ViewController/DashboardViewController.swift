//
//  DashboardViewController.swift
//  OnlineTutor
//
//  Created by Rojan Bajracharya on 5/17/20.
//  Copyright © 2020 Rojan Bajracharya. All rights reserved.
//

import UIKit

class DashboardViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    var dataToDisplay = ["Cards", "Numbers & Letters", "Animals & Plants", "Mathematics", "Draw Numbers", "Solar System", "Test Yourself"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
    }
    
    func setupUI() {
        self.collectionView.register(UINib(nibName: "DashboardCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: DashboardCollectionViewCell.identifier)
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        
        
        lblTitle.font = UIFont.boldSystemFont(ofSize: 24.0)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataToDisplay.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DashboardCVC", for: indexPath) as! DashboardCollectionViewCell
        
        cell.lblName.text = dataToDisplay[indexPath.row]
        cell.lblName.textColor = ColorForApp.shareInstance.colorPrimary()
        cell.lblName.font = UIFont.boldSystemFont(ofSize: 24.0)
        
        cell.viewForCVC.layer.masksToBounds = true
        cell.viewForCVC.layer.cornerRadius = 10
        cell.viewForCVC.layer.borderWidth = 3
        cell.viewForCVC.layer.borderColor = ColorForApp.shareInstance.colorPrimary().cgColor
        cell.viewForCVC.backgroundColor = UIColor.white
        
        Design.shareInstance.addDropShadow(view: cell, shadowColor: UIColor.black, opacity: 0.5, shadowOffset: CGSize(width: 2, height: 2), radius: 2)
        
        return cell
    }
}

extension DashboardViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let screenSize: CGRect = UIScreen.main.bounds
        return CGSize(width: ((screenSize.width / 2.0) - 16), height: ((screenSize.width / 2.0) - 2))
    }
    
}
