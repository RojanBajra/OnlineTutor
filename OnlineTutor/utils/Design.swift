//
//  Design.swift
//  OnlineTutor
//
//  Created by Rojan Bajracharya on 5/17/20.
//  Copyright © 2020 Rojan Bajracharya. All rights reserved.
//

import Foundation
import UIKit

class Design {
    
    static var shareInstance = Design()
    
    func addDropShadow(view: UIView, shadowColor: UIColor, opacity: CGFloat, shadowOffset: CGSize, radius: CGFloat) {
        view.layer.masksToBounds = false
        view.layer.shadowColor = shadowColor.cgColor
        view.layer.shadowOpacity = Float(opacity)
        view.layer.shadowOffset = shadowOffset
        view.layer.shadowRadius = radius
    }
    
}
