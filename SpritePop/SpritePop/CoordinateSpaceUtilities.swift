//
//  CoordinateSpaceUtilities.swift
//  SpritePop
//
//  Created by Downey, Eric on 12/9/16.
//  Copyright © 2016 Downey. All rights reserved.
//

protocol containsSize {
    var size: CGSize { get }
}

extension UIScreen: containsSize {
    var size: CGSize {
        return UIScreen.main.bounds.size
    }
}

/// Utility for interacting with 
public struct Screen {
    
    static var screen: containsSize = UIScreen.main
    
    /// UIScreen - Main Screen - Size
    public static var size: CGSize {
        return screen.size
    }
    
    /// UIScreen - Main Screen - Width
    public static var width: CGFloat {
        return screen.size.width
    }
    
    /// UIScreen - Main Screen - Height
    public static var height: CGFloat {
        return screen.size.height
    }
    
    /// Get CGPoint based on percentage of screen x: 0 - 1.0, y: 0 - 1.0
    public static func get(X x: CGFloat, Y y: CGFloat) -> CGPoint {
        return CGPoint(x: size.width * x, y: size.height * y)
    }
    
    /// Get CGFloat based on percentage of screen x: 0 - 1.0
    public static func get(X x: CGFloat) -> CGFloat {
        return width * x
    }
    
    /// Get CGFloat based on percentage of screen y: 0 - 1.0
    public static func get(Y y: CGFloat) -> CGFloat {
        return height * y
    }
}
