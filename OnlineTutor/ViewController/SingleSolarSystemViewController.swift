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
        self.tableView.register(UINib(nibName: "StatisticsSingleSolarSystemTableViewCell", bundle: nil), forCellReuseIdentifier: StatisticsSingleSolarSystemTableViewCell.identifier)
        
        self.tableView.separatorColor = UIColor.clear
        
        btnCamera.backgroundColor = ColorForApp.shareInstance.colorPrimary()
        btnCamera.layer.cornerRadius = 10
        
    }
    
    @IBAction func btnCamera(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(identifier: "DisplaySelectedARVC") as! DisplaySelectedARViewController
        vc.pageId = 3
        vc.radiusValue = Double(planetManager.getRadiusAR(dataPart: planetNumber))
        vc.imageName = planetManager.getPlanetImageName(dataPart: planetNumber)
        self.navigationController?.pushViewController(vc, animated: true)
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
            
            if indexPath.row > 1 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "StatisticsSingleSolarSystemTVC") as! StatisticsSingleSolarSystemTableViewCell
                cell.lblTitle.text = labelTitle[indexPath.row - 2]
                cell.lblValue.text = planetManager.getPlanetData(dataPart: indexPath.row, positionData: planetNumber)
                
                cell.lblTitle.font = UIFont.boldSystemFont(ofSize: 16.0)
                return cell
            }else{
                let cell = tableView.dequeueReusableCell(withIdentifier: "SingleSolarSystemTVC") as! SingleSolarSystemTableViewCell
                cell.lblTitle.text = planetManager.getPlanetData(dataPart: indexPath.row, positionData: planetNumber)
                return cell
            }
            
        }
    }
    
    
}
