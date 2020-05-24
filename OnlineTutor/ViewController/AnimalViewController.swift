//
//  AnimalViewController.swift
//  OnlineTutor
//
//  Created by Rojan Bajracharya on 5/25/20.
//  Copyright © 2020 Rojan Bajracharya. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var txtAnimal: UITextField!
    @IBOutlet weak var btnAnimal: UIButton!
    @IBOutlet weak var btnCamera: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    let animal = AnimalManager()
    var picker = UIPickerView()
    
    var pickedAnimalNumber = 0
    var concatinatedInformationOfAnimal = ""
    
    
    let labelTitlesForCell = ["Common Name:", "Class:", "Phylum:", "Scientific Name:", "Life Span:", "Description:"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        pickerViewPart()

    }
    
    func setupUI() {
        lblTitle.text = "Choose an Animal."
        lblTitle.font = UIFont.boldSystemFont(ofSize: 30.0)
        lblTitle.textAlignment = .center
        
        btnCamera.backgroundColor = ColorForApp.shareInstance.colorPrimary()
        btnCamera.layer.cornerRadius = 10
        
        self.tableView.register(UINib(nibName: "AnimalTableViewCell", bundle: nil), forCellReuseIdentifier: AnimalTableViewCell.identifier)
        self.tableView.register(UINib(nibName: "AnimalTitleTableViewCell", bundle: nil), forCellReuseIdentifier: AnimalTitleTableViewCell.identifier)
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.separatorColor = UIColor.clear
    }
    
    func pickerViewPart() {
        picker = UIPickerView.init()
        picker.delegate = self
        picker.backgroundColor = ColorForApp.shareInstance.colorPrimaryHalfAlpha()
        picker.setValue(UIColor.black, forKey: "textColor")
        picker.autoresizingMask = .flexibleWidth
        picker.contentMode = .center
        picker.frame = CGRect.init(x: 0.0, y: UIScreen.main.bounds.size.height - 250, width: UIScreen.main.bounds.size.width, height: 250)
    }
    
    
    @IBAction func btnAnimal(_ sender: Any) {
        self.view.addSubview(picker)
    }
    
    @IBAction func btnCamera(_ sender: Any) {
    }
    
    // MARK:- Pikcer view
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return animal.getTotalAnimal()
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return animal.getAnimalName(animalNumber: row)
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        concatinatedInformationOfAnimal = animal.getConcatinatedInformation(dataPart: row)
        pickedAnimalNumber = row
        txtAnimal.text = animal.getAnimalName(animalNumber: row)
        tableView.reloadData()
        picker.removeFromSuperview()
        
    }
    

}

extension AnimalViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return txtAnimal.text == "" ? 0 : (labelTitlesForCell.count + 1)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "AnimalTitleTVC") as! AnimalTitleTableViewCell
            cell.lblTitle.text = txtAnimal.text
            cell.imgAnimal.image = UIImage.init(named: "New Project")
            
            cell.lblTitle.font = UIFont.boldSystemFont(ofSize: 26.0)
            return cell
            
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "AnimalTVC") as! AnimalTableViewCell
            
            cell.lblTitle.text = labelTitlesForCell[indexPath.row - 1]
            cell.lblDescription.text = animal.getAnimalData(indexPart: indexPath.row, dataPart: pickedAnimalNumber)
            
            cell.lblTitle.font = UIFont.boldSystemFont(ofSize: 18.0)
            
            return cell
        }
        
    }
}
