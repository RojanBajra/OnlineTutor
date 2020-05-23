//
//  ViewController.swift
//  OnlineTutor
//
//  Created by Rojan Bajracharya on 5/16/20.
//  Copyright © 2020 Rojan Bajracharya. All rights reserved.
//

import UIKit
import SceneKit
import ARKit

class ViewController: UIViewController, ARSCNViewDelegate {

    @IBOutlet var sceneView: ARSCNView!
    
    let cards: [String : String] = [
        "one" : "1",
        "two" : "2"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the view's delegate
        sceneView.delegate = self
        
        // Show statistics such as fps and timing information
        sceneView.showsStatistics = true
        
        // Create a new scene
        let scene = SCNScene(named: "art.scnassets/ship.scn")!
        
        // Set the scene to the view
        sceneView.scene = scene
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create a session configuration
        let configuration = ARImageTrackingConfiguration()

        if let imageToTrack = ARReferenceImage.referenceImages(inGroupNamed: "Number Cards", bundle: Bundle.main) {
            configuration.trackingImages = imageToTrack
            configuration.maximumNumberOfTrackedImages = 2
        }

        // Run the view's session
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Pause the view's session
        sceneView.session.pause()
    }

    // MARK: - ARSCNViewDelegate
    func renderer(_ renderer: SCNSceneRenderer, nodeFor anchor: ARAnchor) -> SCNNode? {
        
        let node = SCNNode()
        if let imageAnchor = anchor as? ARImageAnchor{
            let plane = SCNPlane(width: imageAnchor.referenceImage.physicalSize.width, height: imageAnchor.referenceImage.physicalSize.height)
            plane.firstMaterial?.diffuse.contents = UIColor(white: 1.0, alpha: 0.7)
            
            let planeNode = SCNNode(geometry: plane)
            planeNode.eulerAngles.x = -.pi / 2
            node.addChildNode(planeNode)
            planeNode.addChildNode(addNode(valueToDisplay: cards[imageAnchor.referenceImage.name!]!, planeNode: planeNode))
            
        }
        
        return node
        
    }
    
    func addNode(valueToDisplay: String, planeNode: SCNNode) -> SCNNode {
        let textGeometry = SCNText(string: valueToDisplay, extrusionDepth: 1.0)
        textGeometry.firstMaterial?.diffuse.contents = UIColor.black
        let textNode = SCNNode(geometry: textGeometry)
        textNode.scale = SCNVector3(x: 0.01, y: 0.01, z: 0.01)
        textNode.eulerAngles.x = .pi / 2
        textNode.position = SCNVector3(x: planeNode.position.x - 0.03
            , y: planeNode.position.y, z: planeNode.position.z)
        return textNode
    }
}
