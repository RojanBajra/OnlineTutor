//
//  AnimalScene.swift
//  OnlineTutor
//
//  Created by Rojan Bajracharya on 5/25/20.
//  Copyright © 2020 Rojan Bajracharya. All rights reserved.
//

import Foundation
import UIKit
import ARKit

class AnimalScene {
    
    static let shareInstance = AnimalScene()
    
    func displayAnimal(selectedAnimal: String) -> SCNNode {
        var sceneName = "art.scnassets/\(selectedAnimal).scn"
        print("scene name is \(sceneName)")
        if let animalScene = SCNScene(named: sceneName) {
            if let animalNode = animalScene.rootNode.childNodes.first{
                animalNode.position = SCNVector3(x: -0.2, y: -0.5, z: -5.5)
                if selectedAnimal == "deer" || selectedAnimal == "horse" || selectedAnimal == "moose" || selectedAnimal == "pig" || selectedAnimal == "rhino" {
                        animalNode.eulerAngles.y = .pi
                }
                return animalNode
            }
            
        }
        return SCNNode()
    }
    
    func displayAnimalDescription(valueToDisplay: String) -> SCNNode {
        let textGeometry = SCNText(string: valueToDisplay, extrusionDepth: 1.0)
        textGeometry.firstMaterial?.diffuse.contents = UIColor.black
        let textNode = SCNNode(geometry: textGeometry)
        textNode.scale = SCNVector3(x: 0.01, y: 0.01, z: 0.01)
        textNode.position = SCNVector3(x: 0.7, y: -0.5, z: -3.5)
        return textNode
    }
    
}
