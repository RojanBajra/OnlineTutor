//
//  SolarSystemScene.swift
//  OnlineTutor
//
//  Created by Rojan Bajracharya on 5/25/20.
//  Copyright © 2020 Rojan Bajracharya. All rights reserved.
//

import Foundation
import ARKit

class SolarSystemScene {
    
    static let shareInstance = SolarSystemScene()
    
    func displaySolarSystem(radiusValue: Double, imageName: String) -> SCNNode {
        let sphere = SCNSphere(radius: CGFloat(radiusValue))
        
        let material = SCNMaterial()
        var imageLocation = "art.scnassets/" + imageName + ".jpg"
        material.diffuse.contents = UIImage.init(named: imageLocation)
        
        sphere.materials = [material]
        
        let node = SCNNode()
        
        node.position = SCNVector3(0.1, 0.1, -20.9)
        node.geometry = sphere
        
        return node
    }
    
}
