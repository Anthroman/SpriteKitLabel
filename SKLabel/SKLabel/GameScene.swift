//
//  GameScene.swift
//  SKLabel
//
//  Created by Anthroman on 3/29/20.
//  Copyright © 2020 Anthroman. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
  let label = SKLabelNode(text: "Hello, SpriteKit!")
    
    override func didMove(to view: SKView) {
        label.position = CGPoint(x: view.frame.width / 2, y: view.frame.height / 2)
        addChild(label)
        
        let recognizer = UITapGestureRecognizer(target: self, action: #selector(tap))
        view.addGestureRecognizer(recognizer)
    }
    
    @objc func tap(recognizer: UIGestureRecognizer) {
        let viewLocation = recognizer.location(in: view)
        let sceneLocation = convertPoint(fromView: viewLocation)
        let moveByAction = SKAction.moveBy(x: sceneLocation.x - label.position.x, y: sceneLocation.y - label.position.y, duration: 1)
        
        // reversed action
        
        let moveByReversedAction = moveByAction.reversed()
        let moveByActions = [moveByAction, moveByReversedAction]
        let moveSequence = SKAction.sequence(moveByActions)
        
        label.run(moveSequence)
        
        
//        let moveToAction = SKAction.move(to: sceneLocation,   duration: 1)
//        label.run(moveToAction)
    }
}
