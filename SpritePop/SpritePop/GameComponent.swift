//
//  R2DGameObject.swift
//  SpritePop
//
//  Copyright © 2016 Eric Downey. All rights reserved.
//

import SpriteKit

public protocol GameComponent {
    func updateCollision(with contact: SKPhysicsContact)
}
