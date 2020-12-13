//
//  GameViewController.swift
//  art_spritekit_sample iOS
//
//  Created by Pedro Cacique on 08/12/20.
//

import UIKit
import SpriteKit
import art

class GameViewController: UIViewController {

    var scene: Canvas2D = Canvas()
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    func setup(){
        let view: SKView = SKView()
        scene.scaleMode = .resizeFill
        view.presentScene(scene)
        view.showsNodeCount = false
        self.view = view
    }
}
