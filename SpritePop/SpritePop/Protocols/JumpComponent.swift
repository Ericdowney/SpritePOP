//
//  JumpComponent.swift
//  SpritePop
//
//  Copyright © 2016 Eric Downey. All rights reserved.
//

import SpriteKit

public protocol JumpComponent {
    var impluse: CGFloat { get }
    var jumpCount: Int { get set }
    
    mutating func resetJump()
    mutating func jump()
}

public extension JumpComponent {
    mutating func resetJump() {
        jumpCount = 0
    }
}

public extension JumpComponent where Self: SKNode {
    mutating func jump() {
        physicsBody?.applyImpulse(CGVector(dx: 0.0, dy: impluse))
        jumpCount += 1
    }
}

public protocol MultiJumpComponent: JumpComponent {
    var availableJumps: Int { get set }
}

public extension MultiJumpComponent where Self: SKNode {
    mutating func jump() {
        if jumpCount < availableJumps {
            physicsBody?.applyImpulse(CGVector(dx: 0.0, dy: impluse))
            jumpCount += 1
        }
    }
}


