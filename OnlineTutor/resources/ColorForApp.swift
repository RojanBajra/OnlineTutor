//
//  ColorForApp.swift
//  OnlineTutor
//
//  Created by Rojan Bajracharya on 5/23/20.
//  Copyright © 2020 Rojan Bajracharya. All rights reserved.
//

import Foundation
import UIKit

class ColorForApp: NSObject{
    
//    private var primaryColor = UIColor.init(red: 211 / 255, green: 129, blue: 47, alpha: 1)
    static let shareInstance = ColorForApp()

    func colorPrimary() -> UIColor {
        return UIColor.init(red: 211 / 255.0, green: 129 / 255.0, blue: 47 / 255.0, alpha: 1.0)
    }
}
