//
//  SKSpriteNodeExtension.swift
//  R2DEngine
//
//  Created by Downey, Eric on 1/17/16.
//  Copyright © 2016 Eric Downey. All rights reserved.
//

import SpriteKit

public extension SKSpriteNode {
    
    // MARK: - Properties
    
    /// Getter/Setter - Sprite's AnchorPoint from enum 'AnchorPoint' i.e. AnchorPoint.center == CGPoint(x: 0.5, y: 0.5)
    public var anchor: AnchorPoint {
        get {
            return AnchorPoint.from(cgPoint: anchorPoint)
        }
        set {
            anchorPoint = newValue.point
        }
    }
    
    // MARK: X
    
    /// <#Description#>
    public var leftX: CGFloat {
        return position.x - (size.width * anchorPoint.x)
    }
    
    /// <#Description#>
    public var rightX: CGFloat {
        return position.x + size.width - (size.width * anchorPoint.x)
    }
    
    // MARK: Y
    
    /// <#Description#>
    public var topY: CGFloat {
        return position.y + size.height - (size.height * anchorPoint.y)
    }
    
    /// <#Description#>
    public var bottomY: CGFloat {
        return position.y - (size.height * anchorPoint.y)
    }
    
    // MARK: - Setters
    
    /// <#Description#>
    ///
    /// - Parameter color: <#color description#>
    /// - Returns: <#return value description#>
    @discardableResult
    public func set(color: SKColor) -> Self {
        self.color = color
        return self
    }
    
    /// <#Description#>
    ///
    /// - Parameter anchorPoint: <#anchorPoint description#>
    /// - Returns: <#return value description#>
    @discardableResult
    public func set(anchorPoint: AnchorPoint) -> Self {
        self.anchorPoint = anchorPoint.point
        return self
    }
    
    /// <#Description#>
    ///
    /// - Parameter texture: <#texture description#>
    /// - Returns: <#return value description#>
    @discardableResult
    public func set(texture: SKTexture) -> Self {
        self.texture = texture
        return self
    }
    
    /// <#Description#>
    ///
    /// - Parameter imageNamed: <#imageNamed description#>
    /// - Returns: <#return value description#>
    @discardableResult
    public func set(imageNamed: String) -> Self {
        texture = SKTexture(imageNamed: imageNamed)
        return self
    }
    
    // MARK: - Physics
    
    /// <#Description#>
    ///
    /// - Parameter physicsBody: <#physicsBody description#>
    /// - Returns: <#return value description#>
    @discardableResult
    func set(physicsBody: SKPhysicsBody) -> Self {
        self.physicsBody = physicsBody
        return self
    }
    
    /// <#Description#>
    ///
    /// - Parameter size: <#size description#>
    /// - Returns: <#return value description#>
    @discardableResult
    func set(physicsBodyFromSize size: CGSize) -> Self {
        physicsBody = SKPhysicsBody(rectangleOf: size)
        return self
    }

    /// <#Description#>
    ///
    /// - Returns: <#return value description#>
    @discardableResult
    func setPhysicsBodyFromTexture() -> Self {
        physicsBody = SKPhysicsBody(rectangleOfSize: texture?.size())
        return self
    }
}
