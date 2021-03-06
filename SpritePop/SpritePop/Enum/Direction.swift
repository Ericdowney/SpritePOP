//
//  R2DEnums.swift
//  R2DEngine
//
//  Created by Downey, Eric on 1/8/16.
//  Copyright © 2016 Eric Downey. All rights reserved.
//

import Foundation

/// Enum - Used to define a direction i.e. Left, Right, Up, Down
public enum Direction {
    /// CGVector - (dx: -1.0, dy: 0.0)
    case left
    /// CGVector - (dx: 1.0, dy: 0.0)
    case right
    /// CGVector - (dx: 0.0, dy: 1.0)
    case up
    /// CGVector - (dx: 0.0, dy: -1.0)
    case down
    /// CGPoint - CGVector
    case none
    
    /// Get Direction enum value as a CGVector
    public var vector: CGVector {
        switch self {
        case .left: return CGVector(dx: -1.0, dy: 0.0)
        case .right: return CGVector(dx: 1.0, dy: 0.0)
        case .up: return CGVector(dx: 0.0, dy: 1.0)
        case .down: return CGVector(dx: 0.0, dy: -1.0)
        case .none: return CGVector(dx: 0.0, dy: 0.0)
        }
    }
    
    public static func from(vector: CGVector) -> Direction {
        switch vector {
        case CGVector(dx: -1.0, dy: 0.0):
            return .left
        case CGVector(dx: 1.0, dy: 0.0):
            return .right
        case CGVector(dx: 0.0, dy: 1.0):
            return .up
        case CGVector(dx: 0.0, dy: -1.0):
            return .down
        default:
            return .none
        }
    }
    
    /// Returns a random (Left or Right) Direction
    public static var randomHorizontal: Direction {
        if arc4random_uniform(2) == 0 {
            return .left
        }
        return .right
    }
    
    /// Returns a random (Up or Down) Direction
    public static var randomVertical: Direction {
        if arc4random_uniform(2) == 0 {
            return .up
        }
        return .down
    }
}
