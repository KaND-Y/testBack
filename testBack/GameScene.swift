//
//  GameScene.swift
//  testBack
//
//  Created by Kai Drayton-Yee on 8/3/16.
//  Copyright (c) 2016 Kai Drayton-Yee. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    
    func setupCircs() {
        for numyea in 1...5{
            let rotateyea = SKAction.rotateByAngle(CGFloat(M_PI) / 2, duration: Double(numyea) )
            let foreveryea = SKAction.repeatActionForever(rotateyea)
    let circYea = SKSpriteNode(texture: SKTexture(imageNamed: "backCirc_\(numyea)"), color: UIColor.blueColor(), size: CGSize(width: 700, height: 700))
             circYea.position.x = self.frame.width / 2
            circYea.position.y = self.frame.height / 2
             circYea.zPosition = 1
            circYea.alpha = 0.2
            print(numyea)
            addChild(circYea)
            circYea.runAction(foreveryea)

        }
    }
    
    override func didMoveToView(view: SKView) {
        setupCircs()
        
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
     
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
