//
//  ViewController.swift
//  NGSpriteKitSpringTest
//
//  Created by Noah Gilmore on 5/24/17.
//  Copyright © 2017 Noah Gilmore. All rights reserved.
//

import UIKit
import SpriteKit

final class TestScene: SKScene {
  let childOne: SKNode!
  let childTwo: SKNode!

  override init(size: CGSize) {
    childOne = SKSpriteNode(color: .red, size: CGSize(width: 50, height: 50))
    childTwo = SKSpriteNode(color: .red, size: CGSize(width: 50, height: 50))

    super.init(size: size)

    self.backgroundColor = .blue
    self.anchorPoint = CGPoint(x: 0.5, y: 0.5)

    childOne.position = CGPoint(x: 100, y: 0)
    self.addChild(childOne)

    childTwo.position = CGPoint(x: -100, y: 0)
    self.addChild(childTwo)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    super.touchesBegan(touches, with: event)
    childOne.run(SKAction.scale(by: 1.2, duration: 1))
  }
}

class ViewController: UIViewController {
  let sceneView = SKView()

  override func loadView() {
    view = sceneView
  }

  override func viewDidLoad() {
    super.viewDidLoad()
  }

  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)

    let scene = TestScene(size: sceneView.bounds.size)

    sceneView.presentScene(scene)
  }
}

