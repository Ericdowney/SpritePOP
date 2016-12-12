//
//  BlinkComponent.swift
//  SpritePop
//
//  Copyright © 2016 Eric Downey. All rights reserved.
//

import SpriteKit

public protocol BlinkComponent {
    var fadeDuration: TimeInterval { get set }
    var blinkCount: Int { get set }
    
    func blink()
    func blinkEnd() -> SKAction
}

public extension BlinkComponent where Self: SKNode {
    func blink() {
        var sequence: [SKAction] = []
        blinkCount.times {
            sequence.append(self.blinkAction())
        }
        sequence.append(blinkEnd())
        
        run(SKAction.sequence( sequence ))
    }
    
    fileprivate func blinkAction() -> SKAction {
        return SKAction.sequence([
            SKAction.fadeOut(withDuration: fadeDuration),
            SKAction.wait(forDuration: 0.05),
            SKAction.fadeIn(withDuration: fadeDuration)
        ])
    }
}
