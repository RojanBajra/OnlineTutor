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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        self.tableView.register(UINib(nibName: "TestResultTableViewCell", bundle: nil), forCellReuseIdentifier: TestResultTableViewCell.identifier)
    }

}

extension TestResultViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TestResultTVC") as! TestResultTableViewCell
        
        return cell
    }
    
    
}
