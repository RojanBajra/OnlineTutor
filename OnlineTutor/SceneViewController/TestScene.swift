//
//  TestScene.swift
//  OnlineTutor
//
//  Created by Rojan Bajracharya on 5/28/20.
//  Copyright © 2020 Rojan Bajracharya. All rights reserved.
//

import Foundation
import ARKit

struct TestScene {
    
    static let shareInstance = TestScene()
    
    func displayObject(imageName: String, isImage: Bool, questionType: String) -> SCNNode {
        var node = SCNNode()
        
        if questionType == "Maths" {
            node = MathsScene.shareInstance.displayForTest(imageName: imageName)
        }else if questionType == "SolarSystem" {
            node = SolarSystemScene.shareInstance.displaySolarSystem(imageName: imageName)
        }else if questionType == "Animal" {
            node = AnimalScene.shareInstance.displayAnimal(selectedAnimal: imageName)
        }else{
            node = AlphabetScene.shareInstance.addNode(valueToDisplay: imageName)
        }
        
        return node
    }
    
}
