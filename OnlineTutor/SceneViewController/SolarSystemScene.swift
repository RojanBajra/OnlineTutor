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
    
    func displaySolarSystem(imageName: String) -> SCNNode {
        let sphere = SCNSphere(radius: 1)
        
        let material = SCNMaterial()
        var imageLocation = "art.scnassets/" + imageName + ".jpg"
        material.diffuse.contents = UIImage.init(named: imageLocation)
        
        sphere.materials = [material]
        
        let node = SCNNode()
        
        node.position = SCNVector3(0.1, -0.5, -4.9)
        node.geometry = sphere
        
        return node
    }
    
    func displayPlanetDescription(valueToDisplay: String) -> SCNNode {
        let textGeometry = SCNText(string: valueToDisplay, extrusionDepth: 1.0)
        textGeometry.firstMaterial?.diffuse.contents = UIColor.black
        let textNode = SCNNode(geometry: textGeometry)
        textNode.scale = SCNVector3(x: 0.01, y: 0.01, z: 0.01)
        textNode.position = SCNVector3(x: 0.9, y: -0.5, z: -3.5)
        return textNode
    }
    
}
