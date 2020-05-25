//
//  SingleSolarSystemViewController.swift
//  OnlineTutor
//
//  Created by Rojan Bajracharya on 5/25/20.
//  Copyright © 2020 Rojan Bajracharya. All rights reserved.
//

import UIKit

class SingleSolarSystemViewController: UIViewController {

    @IBOutlet weak var btnCamera: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    let labelTitle = ["Radius: ", "Mass: ", "Gravity: ", "Distance from Sun: "]
    var planetNumber = 0
    var planetManager = SolarSystemManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        self.tableView.register(UINib(nibName: "SingleSolarSystemTableViewCell", bundle: nil), forCellReuseIdentifier: SingleSolarSystemTableViewCell.identifier)
        self.tableView.register(UINib(nibName: "AnimalTitleTableViewCell", bundle: nil), forCellReuseIdentifier: AnimalTitleTableViewCell.identifier)
        
        self.tableView.separatorColor = UIColor.clear
        
        btnCamera.backgroundColor = ColorForApp.shareInstance.colorPrimary()
        btnCamera.layer.cornerRadius = 10
        
    }

}

extension SingleSolarSystemViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "AnimalTitleTVC") as! AnimalTitleTableViewCell
            
            cell.lblTitle.text = planetManager.getPlanetName(dataPart: planetNumber)
            cell.imgAnimal.image = UIImage.init(named: planetManager.getPlanetImageName(dataPart: planetNumber) + "2d")
            
            cell.lblTitle.font = UIFont.boldSystemFont(ofSize: 35.0)
            cell.imgAnimal.layer.cornerRadius = 20
            cell.imgAnimal.layer.masksToBounds = true
            
            cell.viewImage.layer.cornerRadius = 20
            Design.shareInstance.addDropShadow(view: cell.viewImage, shadowColor: UIColor.black, opacity: 0.7, shadowOffset: CGSize(width: 1, height: 1), radius: 3.0)
            
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "SingleSolarSystemTVC") as! SingleSolarSystemTableViewCell
            
            if indexPath.row > 1 {
                var boldText = Design.shareInstance.makeTextBold(textToMakeBold: labelTitle[indexPath.row - 2], boldSize: 23.0)
//                cell.lblTitle.attributedText = boldText + planetManager.getPlanetData(dataPart: indexPath.row, positionData: planetNumber)
                cell.lblTitle.text = labelTitle[indexPath.row - 2] + planetManager.getPlanetData(dataPart: indexPath.row, positionData: planetNumber)
            }else{
                cell.lblTitle.text = planetManager.getPlanetData(dataPart: indexPath.row, positionData: planetNumber)
            }
            return cell
        }
    }
    
    
}
