//
//  AnchorPoint.swift
//  SpritePop
//
//  Copyright © 2016 Eric Downey. All rights reserved.
//

import Foundation

/// Enum - Used to set Sprite Node anchor point
public enum AnchorPoint {
    /// CGPoint - (x: 0.5, y: 0.5)
    case center
    /// CGPoint - (x: 0.0, y: 0.5)
    case left
    /// CGPoint - (x: 1.0, y: 0.5)
    case right
    /// CGPoint - (x: 0.5, y: 1.0)
    case top
    /// CGPoint - (x: 0.5, y: 0.0)
    case bottom
    /// CGPoint - (x: 0.0, y: 0.0)
    case bottomLeft
    /// CGPoint - (x: 1.0, y: 0.0)
    case bottomRight
    /// CGPoint - (x: 0.0, y: 1.0)
    case topLeft
    /// CGPoint - (x: 1.0, y: 1.0)
    case topRight
    /// CGPoint - CGPointZero
    case none
    
    /// Get AnchorPoint enum value as a CGPoint
    public var point: CGPoint {
        switch self {
        case .center: return CGPoint(x: 0.5, y: 0.5)
        case .left: return CGPoint(x: 0.0, y: 0.5)
        case .right: return CGPoint(x: 1.0, y: 0.5)
        case .top: return CGPoint(x: 0.5, y: 1.0)
        case .bottom: return CGPoint(x: 0.5, y: 0.0)
        case .bottomLeft: return CGPoint(x: 0.0, y: 0.0)
        case .bottomRight: return CGPoint(x: 1.0, y: 0.0)
        case .topLeft: return CGPoint(x: 0.0, y: 1.0)
        case .topRight: return CGPoint(x: 1.0, y: 1.0)
        default:
            return .zero
        }
    }
    
    /**
     Returns an AnchorPoint from a CGPoint. Returns AnchorPoint.None if not a valid AnchorPoint representation
     
     - Parameter point: The CGPoint used to get the AnchorPoint representation
     
     - Returns: Self
     */
    public static func from(cgPoint: CGPoint) -> AnchorPoint {
        switch cgPoint {
        case CGPoint(x: 0.5, y: 0.5):
            return .center
        case CGPoint(x: 0.0, y: 0.5):
            return .left
        case CGPoint(x: 1.0, y: 0.5):
            return .right
        case CGPoint(x: 0.5, y: 1.0):
            return .top
        case CGPoint(x: 0.5, y: 0.0):
            return .bottom
        case CGPoint(x: 0.0, y: 0.0):
            return .bottomLeft
        case CGPoint(x: 1.0, y: 0.0):
            return .bottomRight
        case CGPoint(x: 0.0, y: 1.0):
            return .topLeft
        case CGPoint(x: 1.0, y: 1.0):
            return .topRight
        default:
            return .none
        }
    }
}
