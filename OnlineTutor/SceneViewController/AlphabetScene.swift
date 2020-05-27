//
//  AlphabetScene.swift
//  OnlineTutor
//
//  Created by Rojan Bajracharya on 5/28/20.
//  Copyright © 2020 Rojan Bajracharya. All rights reserved.
//

import Foundation
import ARKit

class AlphabetScene {
    
    static let shareInstance = AlphabetScene()
    
    func addNode(valueToDisplay: String) -> SCNNode {
        let textGeometry = SCNText(string: valueToDisplay, extrusionDepth: 1.0)
        textGeometry.firstMaterial?.diffuse.contents = UIColor.black
        let textNode = SCNNode(geometry: textGeometry)
        textNode.scale = SCNVector3(x: 0.01, y: 0.01, z: 0.01)
        textNode.position = SCNVector3(x: -0.2, y: 0, z: -0.5)
        return textNode
    }
}
