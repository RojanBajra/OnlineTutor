//
//  DisplaySelectedARViewController.swift
//  OnlineTutor
//
//  Created by Rojan Bajracharya on 5/24/20.
//  Copyright © 2020 Rojan Bajracharya. All rights reserved.
//

import UIKit
import ARKit

class DisplaySelectedARViewController: UIViewController, ARSCNViewDelegate {

    @IBOutlet weak var sceneView: ARSCNView!
    var nameToDisplay: String = ""
    
    let cards: [String : String] = [
        "one" : "1",
        "two" : "2"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the view's delegate
        sceneView.delegate = self
        
        sceneView.scene.rootNode.addChildNode(addNode(valueToDisplay: nameToDisplay))
        
        //for sphere
//        let sphere = SCNSphere(radius: 0.2)
//        let material = SCNMaterial()
//        material.diffuse.contents = UIColor.red
//        sphere.materials = [material]
//        let node = SCNNode()
//        node.position = SCNVector3(0, 0.1, -1.5)
//        node.geometry = sphere
//        sceneView.scene.rootNode.addChildNode(node)
        
        
//        let scene = SCNScene(named: "art.scnassets/ship.scn")!
//
//        // Set the scene to the view
//        sceneView.scene = scene
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create a session configuration
        let configuration = ARPositionalTrackingConfiguration()

        // Run the view's session
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Pause the view's session
        sceneView.session.pause()
    }
    
    func session(_ session: ARSession, didFailWithError error: Error) {
        
    }
    
    func sessionWasInterrupted(_ session: ARSession) {
        
    }
    
    func sessionInterruptionEnded(_ session: ARSession) {
        
    }

    // MARK: - ARSCNViewDelegate
//    func renderer(_ renderer: SCNSceneRenderer, nodeFor anchor: ARAnchor) -> SCNNode? {
//
//        let node = SCNNode()
//        if let imageAnchor = anchor as? ARImageAnchor{
//            let plane = SCNPlane(width: imageAnchor.referenceImage.physicalSize.width, height: imageAnchor.referenceImage.physicalSize.height)
//            plane.firstMaterial?.diffuse.contents = UIColor(white: 1.0, alpha: 0.7)
//
//            let planeNode = SCNNode(geometry: plane)
//            planeNode.eulerAngles.x = -.pi / 2
//            node.addChildNode(planeNode)
//            planeNode.addChildNode(addNode(valueToDisplay: cards[imageAnchor.referenceImage.name!]!, planeNode: planeNode))
//
//        }
//
//        return node
//
//    }
    
    func addNode(valueToDisplay: String) -> SCNNode {
        let textGeometry = SCNText(string: valueToDisplay, extrusionDepth: 1.0)
        textGeometry.firstMaterial?.diffuse.contents = UIColor.black
        let textNode = SCNNode(geometry: textGeometry)
        textNode.scale = SCNVector3(x: 0.01, y: 0.01, z: 0.01)
//        textNode.eulerAngles.x = .pi / 2
        textNode.position = SCNVector3(x: -0.2, y: 0, z: -0.5)
        return textNode
    }
}
