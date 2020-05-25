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
    
    func displaySolarSystem() -> SCNNode {
        let sphere = SCNSphere(radius: 1)
        
        let material = SCNMaterial()
        material.diffuse.contents = UIColor.red
        
        sphere.materials = [material]
        
        let node = SCNNode()
        
        node.position = SCNVector3(0.1, 0.1, -0.9)
        node.geometry = sphere
        
        return node
    }
    
}
