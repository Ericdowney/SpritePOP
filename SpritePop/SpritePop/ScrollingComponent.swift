//
//  MovementComponent.swift
//  SpritePop
//
//  Copyright © 2016 Eric Downey. All rights reserved.
//

import SpriteKit

public protocol ScrollingComponent {
    var direction: Direction { get set }
    var speed: CGFloat { get set }
    var action: SKAction { get }
    var foreverAction: SKAction { get }
    
    func scroll()
    func scrollForever()
}

public extension ScrollingComponent {
    var scrollDelta: CGVector {
        return direction.vector * speed
    }
    
    var action: SKAction {
        return SKAction.move(by: scrollDelta, duration: 1.0/60.0)
    }
    
    var foreverAction: SKAction {
        return SKAction.repeatForever( action )
    }
}

public extension ScrollingComponent where Self: SKNode {
    func scroll() {
        run( action )
    }
    
    func scrollForever() {
        run( foreverAction )
    }
}


