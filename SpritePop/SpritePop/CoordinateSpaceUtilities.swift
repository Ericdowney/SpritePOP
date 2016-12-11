//
//  CoordinateSpaceUtilities.swift
//  SpritePop
//
//  Created by Downey, Eric on 12/9/16.
//  Copyright © 2016 Downey. All rights reserved.
//

public protocol screenProperties {
    var size: CGSize { get }
    var scale: CGFloat { get }
    var coordinateSpace: UICoordinateSpace { get }
}

extension UIScreen: screenProperties {
    public var size: CGSize {
        return UIScreen.main.bounds.size
    }
}

/// Utility for interacting with the main screen.
open class Screen {
    
    public static var screen: screenProperties = UIScreen.main
    
    // MARK: - UIScreen Main Properties
    
    /// UIScreen - Main Screen - Size
    open class var size: CGSize {
        return screen.size
    }
    
    /// UIScreen - Main Screen - Coordinate Space
    open class var coordinateSpace: UICoordinateSpace {
        return screen.coordinateSpace
    }
    
    open class var scale: CGFloat {
        return screen.scale
    }
    
    /// UIScreen - Main Screen - Width
    open class var width: CGFloat {
        return screen.size.width
    }
    
    /// UIScreen - Main Screen - Height
    open class var height: CGFloat {
        return screen.size.height
    }
    
    // MARK: - Calculate Position
    
    /// Get CGPoint based on percentage of screen
    ///
    /// - Parameters:
    ///   - x: Value between 0.0 - 1.0
    ///   - y: Value between 0.0 - 1.0
    /// - Returns: CGPoint with position based on X & Y Percentages
    open class func get(X x: CGFloat, Y y: CGFloat) -> CGPoint {
        return CGPoint(x: size.width * x, y: size.height * y)
    }
    
    /// Get CGFloat based on percentage of screen x
    ///
    /// - Parameter x: Value between 0.0 - 1.0
    /// - Returns: CGFloat represents the X position based on Percentage
    open class func get(X x: CGFloat) -> CGFloat {
        return width * x
    }
    
    /// Get CGFloat based on percentage of screen y
    ///
    /// - Parameter y: Value between 0.0 - 1.0
    /// - Returns: CGFloat represents the Y position based on Percentage
    open class func get(Y y: CGFloat) -> CGFloat {
        return height * y
    }
}
