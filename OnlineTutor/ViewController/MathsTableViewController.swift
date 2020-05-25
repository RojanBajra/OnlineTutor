//
//  MathsTableViewController.swift
//  OnlineTutor
//
//  Created by Rojan Bajracharya on 5/26/20.
//  Copyright © 2020 Rojan Bajracharya. All rights reserved.
//

import UIKit

class MathsTableViewController: UITableViewController {

    let mathsShape = MathsManager()
    
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
        return mathsShape.getShapeCount()
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MathsTVC", for: indexPath) as! MathsTableViewCell
        
        cell.imgShape.image = UIImage.init(named: mathsShape.getImageName(dataPart: indexPath.row))
        cell.lblShapeName.text = mathsShape.getShapeName(dataPart: indexPath.row)
        cell.lblShapeDescription.text = mathsShape.getShapeDescription(dataPart: indexPath.row)
        cell.lblSymbol.text = mathsShape.getShapeSymbol(dataPart: indexPath.row)
        cell.lblVolume.text = mathsShape.getShapeVolume(dataPart: indexPath.row)
        cell.lblSurfaceArea.text = mathsShape.getShapeSurfaceArea(dataPart: indexPath.row)
        cell.lblLateralSurfaceArea.text = mathsShape.getShapeLateralSurfaceArea(dataPart: indexPath.row)
        cell.lblBaseArea.text = mathsShape.getShapeBaseArea(dataPart: indexPath.row)
        
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
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = self.storyboard?.instantiateViewController(identifier: "DisplaySelectedARVC") as! DisplaySelectedARViewController
        vc.pageId = 4
        vc.shapeId = indexPath.row + 1
        vc.shapeInfo = mathsShape.concatInformation(dataPart: indexPath.row)
        self.navigationController?.pushViewController(vc, animated: true)
    }

}
