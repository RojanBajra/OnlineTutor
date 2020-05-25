//
//  SolarSystemTableViewController.swift
//  OnlineTutor
//
//  Created by Rojan Bajracharya on 5/25/20.
//  Copyright © 2020 Rojan Bajracharya. All rights reserved.
//

import UIKit

class SolarSystemTableViewController: UITableViewController {

    let planet = SolarSystemManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        self.tableView.register(UINib(nibName: "SolarSystemTableViewCell", bundle: nil), forCellReuseIdentifier: SolarSystemTableViewCell.identifier)
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return planet.getPlanetCount()
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SolarSystemTVC", for: indexPath) as! SolarSystemTableViewCell
        
        cell.lblTitle.text = planet.getPlanetName(dataPart: indexPath.row)
        cell.lblDescription.text = planet.getPlanetDescription(dataPart: indexPath.row)
        cell.imgSolarSystem.image = UIImage.init(named: planet.getPlanetImageName(dataPart: indexPath.row) + "2d")
        
        cell.imgSolarSystem.layer.cornerRadius = 20
        cell.imgSolarSystem.layer.masksToBounds = true
        
        cell.lblTitle.font = UIFont.boldSystemFont(ofSize: 24.0)
        cell.lblTitle.textColor = ColorForApp.shareInstance.colorPrimary()
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = self.storyboard?.instantiateViewController(identifier: "SingleSolarSystemVC") as! SingleSolarSystemViewController
        vc.planetNumber = indexPath.row
        self.navigationController?.pushViewController(vc, animated: true)
    }

}
