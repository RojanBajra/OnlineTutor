//
//  PagesManager.swift
//  OnlineTutor
//
//  Created by Rojan Bajracharya on 5/23/20.
//  Copyright © 2020 Rojan Bajracharya. All rights reserved.
//

import Foundation
import UIKit

struct PagesManager {
    private var pageData: [Pages]
    
    init() {
        self.pageData = []
    }
    
    init(storyboard: UIStoryboard) {
        self.pageData = [
            Pages(
                pageName: "Cards",
                pageViewController: storyboard.instantiateViewController(identifier: "DisplayCardVC") as! DisplayCardViewController,
                pageID: "DisplayCardVC",
                pageIcon: "icon_flashCard"
            ),
            Pages(
                pageName: "Numbers & Letters",
                pageViewController: storyboard.instantiateViewController(identifier: "DisplaySelectedVC") as! DisplaySelectedViewController,
                pageID: "DisplaySelectedVC",
                pageIcon: "icon_alphabet"
            ),
            Pages(
                pageName: "Animals",
                pageViewController: storyboard.instantiateViewController(identifier: "AnimalVC") as! AnimalViewController,
                pageID: "DisplayCardVC",
                pageIcon: "icon_animal"
            ),
            Pages(
                pageName: "Mathematics",
                pageViewController: storyboard.instantiateViewController(identifier: "DisplayCardVC") as! DisplayCardViewController,
                pageID: "DisplayCardVC",
                pageIcon: "icon_maths"
            ),
            Pages(
                pageName: "Draw Numbers",
                pageViewController: storyboard.instantiateViewController(identifier: "DisplayCardVC") as! DisplayCardViewController,
                pageID: "DisplayCardVC",
                pageIcon: "icon_doodle"
            ),
            Pages(
                pageName: "Solar System",
                pageViewController: storyboard.instantiateViewController(identifier: "DisplayCardVC") as! DisplayCardViewController,
                pageID: "DisplayCardVC",
                pageIcon: "icon_solarSystem"
            ),
            Pages(
                pageName: "Test Yourself",
                pageViewController: storyboard.instantiateViewController(identifier: "DisplayCardVC") as! DisplayCardViewController,
                pageID: "DisplayCardVC",
                pageIcon: "icon_test"
            )
        ]
    }
    
    func getPagesCount() -> Int {
        return pageData.count
    }
    
    func getPageName(dataNumber: Int) -> String {
        return self.pageData[dataNumber].pageName
    }
    
    func getPageIcon(dataNumber: Int) -> String {
        return self.pageData[dataNumber].pageIcon
    }
    
    func getPageViewController(dataNumber: Int) -> UIViewController {
        return self.pageData[dataNumber].pageViewController
    }
    
    func getPageId(dataNumber: Int) -> String {
        return self.pageData[dataNumber].pageID
    }
}
