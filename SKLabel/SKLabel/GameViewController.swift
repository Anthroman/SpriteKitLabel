//
//  GameViewController.swift
//  SKLabel
//
//  Created by Anthroman on 3/29/20.
//  Copyright © 2020 Anthroman. All rights reserved.
//

import SpriteKit


class GameViewController: UIViewController {

    override func viewDidLoad() {
        let scene = GameScene(size: view.frame.size)
        let skView = view as! SKView
        skView.presentScene(scene)
    }
}
