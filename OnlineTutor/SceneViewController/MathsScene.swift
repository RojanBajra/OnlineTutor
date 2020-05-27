//
//  MathsScene.swift
//  OnlineTutor
//
//  Created by Rojan Bajracharya on 5/26/20.
//  Copyright © 2020 Rojan Bajracharya. All rights reserved.
//

import Foundation
import UIKit
import ARKit

class MathsScene{
    
    static let shareInstance = MathsScene()
    
    func displayObject(shapeId: Int) -> SCNNode {
//        return displayCube()
        if shapeId == 1 {
            return displaySphere()
        }else if shapeId == 2 {
            return displayTorus()
        }else if shapeId == 3 {
            return displayCylinder()
        }else if shapeId == 4 {
            return displayCone()
        }else if shapeId == 5 {
            return displayCube(width: 1, height: 1, length: 1)
        }else if shapeId == 6 {
            return displayCube(width: 1, height: 2, length: 3)
        }else if shapeId == 7 {
            return displayPyramid()
        }
        return SCNNode()
    }
    
    func displayShapeDescription(valueToDisplay: String) -> SCNNode {
        let textGeometry = SCNText(string: valueToDisplay, extrusionDepth: 1.0)
        textGeometry.firstMaterial?.diffuse.contents = UIColor.black
        let textNode = SCNNode(geometry: textGeometry)
        textNode.scale = SCNVector3(x: 0.01, y: 0.01, z: 0.01)
        textNode.position = SCNVector3(x: 0.1, y: 0.85, z: -3.5)
        return textNode
    }
    
    func displaySphere() -> SCNNode {
        let sphere = SCNSphere(radius: 1)
        
        let material = SCNMaterial()
//        var imageLocation = "art.scnassets/" + imageName + ".jpg"
        material.diffuse.contents = ColorForApp.shareInstance.colorPrimary()
        
        sphere.materials = [material]
        
        let node = SCNNode()
        
        node.position = SCNVector3(0.1, -0.5, -4.9)
        node.geometry = sphere
        
        return node
    }
    
    func displayCube(width: Int, height: Int, length: Int) -> SCNNode {
        let cube = SCNBox(width: CGFloat(width), height: CGFloat(height), length: CGFloat(length), chamferRadius: 0)
        
        let material = SCNMaterial()
        material.diffuse.contents = ColorForApp.shareInstance.colorPrimary()
        
        cube.materials = [material]
        
        let node = SCNNode()
        
        node.position = SCNVector3(0.1, -0.5, -4.9)
        node.eulerAngles.x = .pi / 4.0
        node.eulerAngles.y = .pi / 4.0
        node.geometry = cube
        
        return node
    }
    
    func displayCylinder() -> SCNNode {
        let cylinder = SCNCylinder(radius: 1, height: 2)
        
        let material = SCNMaterial()
        material.diffuse.contents = ColorForApp.shareInstance.colorPrimary()
        
        cylinder.materials = [material]
        
        let node = SCNNode()
        
        node.position = SCNVector3(0.1, -0.5, -4.9)
        node.eulerAngles.x = .pi / 4.0
        node.eulerAngles.y = .pi / 4.0
        node.geometry = cylinder
        
        return node
    }
    
    func displayCone() -> SCNNode {
        let cone = SCNCone(topRadius: 0, bottomRadius: 2, height: 3)
        
        let material = SCNMaterial()
        material.diffuse.contents = ColorForApp.shareInstance.colorPrimary()
        
        cone.materials = [material]
        
        let node = SCNNode()
        
        node.position = SCNVector3(0.1, -0.5, -4.9)
        node.eulerAngles.x = .pi / 4.0
        node.eulerAngles.y = .pi / 4.0
        node.geometry = cone
        
        return node
    }
    
    func displayTorus() -> SCNNode {
        let torus = SCNTorus(ringRadius: 1.25, pipeRadius: 0.75)
        
        let material = SCNMaterial()
        material.diffuse.contents = ColorForApp.shareInstance.colorPrimary()
        
        torus.materials = [material]
        
        let node = SCNNode()
        
        node.position = SCNVector3(0.1, -0.5, -6.9)
        node.eulerAngles.x = .pi / 4.0
        node.eulerAngles.y = .pi / 4.0
        node.geometry = torus
        
        return node
    }
    
    func displayPyramid() -> SCNNode {
        let pyramid = SCNPyramid(width: 1, height: 2, length: 1)
        
        let material = SCNMaterial()
        material.diffuse.contents = ColorForApp.shareInstance.colorPrimary()
        
        pyramid.materials = [material]
        
        let node = SCNNode()
        
        node.position = SCNVector3(0.1, -0.5, -4.9)
        node.eulerAngles.x = .pi / 4.0
        node.eulerAngles.y = .pi / 4.0
        node.geometry = pyramid
        
        return node
    }
    
    func displayForTest(imageName: String) -> SCNNode {
        
        if imageName.lowercased() == "cube" {
            return displayCube(width: 1, height: 1, length: 1)
        }else if imageName.lowercased() == "cuboid" {
            return displayCube(width: 1, height: 2, length: 3)
        }else if imageName.lowercased() == "sphere" {
            return displaySphere()
        }else if imageName.lowercased() == "torus" {
            return displayTorus()
        }else if imageName.lowercased() == "cylinder" {
            return displayCylinder()
        }else if imageName.lowercased() == "pyramid" {
            return displayPyramid()
        }else {
            return displayCone()
        }
        
    }
    
}
