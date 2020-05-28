//
//  TestResultViewController.swift
//  OnlineTutor
//
//  Created by Rojan Bajracharya on 5/29/20.
//  Copyright © 2020 Rojan Bajracharya. All rights reserved.
//

import UIKit

class TestResultViewController: UIViewController {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    var testResultData: [TestResult] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        fetchData()
    }
    
    func setupUI() {
        self.lblTitle.font = UIFont.boldSystemFont(ofSize: 30.0)
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        self.tableView.register(UINib(nibName: "TestResultTableViewCell", bundle: nil), forCellReuseIdentifier: TestResultTableViewCell.identifier)
        
        self.tableView.separatorColor = UIColor.clear
        self.tableView.tableFooterView = UIView()
    }
    
    func fetchData() {
        testResultData = AppDatabase.shareIntsance.fetchDataFromTableForNotCompleted()
        self.tableView.reloadData()
    }

}

extension TestResultViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return testResultData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TestResultTVC") as! TestResultTableViewCell
        
        cell.lblTitle.text = "Test " + String(testResultData[indexPath.row].id)
        cell.lblQuestion.text = testResultData[indexPath.row].totalQuestion
        cell.lblIncorrect.text = testResultData[indexPath.row].totalIncorrect
        cell.lblCorrect.text = testResultData[indexPath.row].totalCorrect
        
        Design.shareInstance.addDropShadow(view: cell.viewForTestResult, shadowColor: ColorForApp.shareInstance.colorPrimary(), opacity: 0.7, shadowOffset: CGSize(width: 1, height: 1), radius: 5)
        
        cell.viewForTestResult.layer.cornerRadius = 10
        cell.viewForTestResult.layer.borderColor = ColorForApp.shareInstance.colorPrimary().cgColor
        cell.viewForTestResult.layer.borderWidth = 2
        
        cell.lblTitle.font = UIFont.boldSystemFont(ofSize: 20.0)
        cell.lblTitle.textColor = ColorForApp.shareInstance.colorPrimary()
        
        return cell
    }
    
    
}
