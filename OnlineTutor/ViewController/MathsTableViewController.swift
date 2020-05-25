//
//  MathsTableViewController.swift
//  OnlineTutor
//
//  Created by Rojan Bajracharya on 5/26/20.
//  Copyright © 2020 Rojan Bajracharya. All rights reserved.
//

import UIKit

class MathsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        self.tableView.register(UINib(nibName: "MathsTableViewCell", bundle: nil), forCellReuseIdentifier: MathsTableViewCell.identifier)
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MathsTVC", for: indexPath) as! MathsTableViewCell
        
        cell.imgShape.image = UIImage.init(named: "dog")
        cell.lblShapeName.text = "Shape Name"
        cell.lblShapeDescription.text = "Shape Description"
        cell.lblVolume.text = "Volume formula"
        cell.lblSurfaceArea.text = "Surface Area formula"
        cell.lblLateralSurfaceArea.text = "Lateral Surface Area formula"
        cell.lblBaseArea.text = "Base Area Formula"
        
        cell.viewPart.layer.cornerRadius = 20
        cell.viewPart.backgroundColor = UIColor.white
        cell.viewPart.layer.borderColor = ColorForApp.shareInstance.colorPrimary().cgColor
        cell.viewPart.layer.borderWidth = 2
        Design.shareInstance.addDropShadow(view: cell.viewPart, shadowColor: UIColor.black, opacity: 0.4, shadowOffset: CGSize(width: 1, height: 1), radius: 5.5)
        
        cell.imgShape.layer.cornerRadius = 20
        
        cell.lblShapeName.font = UIFont.boldSystemFont(ofSize: 20.0)
        cell.lblShapeName.textColor = ColorForApp.shareInstance.colorPrimary()
        
        return cell
    }

}
