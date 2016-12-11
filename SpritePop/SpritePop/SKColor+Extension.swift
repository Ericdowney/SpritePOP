//
//  SKColorExtension.swift
//  R2DEngine
//
//  Created by Downey, Eric on 1/9/16.
//  Copyright © 2016 Eric Downey. All rights reserved.
//

import SpriteKit

// MARK: - SKColor extension that add a whole bunch of utility functions like:
public extension SKColor {
    public class func r2dColor(red r: CGFloat, green g: CGFloat, blue b: CGFloat, alpha a: CGFloat) -> SKColor {
        return SKColor(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: a)
    }
    
    /// Construct a SKColor using an HTML/CSS RGB formatted value and an alpha value
    ///
    /// - Parameters:
    ///   - rgbValue: RGB value
    ///   - alpha: color's alpha value
    /// - Returns: An SKColor instance that represent the required color
    public class func color(withRGB rgbValue : UInt, alpha : CGFloat = 1.0) -> SKColor {
        let red = CGFloat((rgbValue & 0xFF0000) >> 16) / 255
        let green = CGFloat((rgbValue & 0xFF00) >> 8) / 255
        let blue = CGFloat(rgbValue & 0xFF) / 255
        
        return SKColor(red: red, green: green, blue: blue, alpha: alpha)
    }

    /// Returns a lighter color by the provided percentage
    ///
    /// - Parameter percent: Lighting percentage
    /// - Returns: Lighter SKColor
    public func lighterColor(by percent: Double) -> SKColor {
        return color(withBrightness: CGFloat(1 + percent));
    }
    
    /// Returns a darker color by the provided percentage
    ///
    /// - Parameter percent: darkning percentage
    /// - Returns: Darker SKColor
    public func darkerColor(by percent: Double) -> SKColor {
        return color(withBrightness: CGFloat(1 - percent));
    }
    
    /// Return a modified color using the brightness factor provided
    ///
    /// - Parameter factor: Brightness factor
    /// - Returns: SKColor with brightness modified
    public func color(withBrightness factor: CGFloat) -> SKColor {
        var hue : CGFloat = 0
        var saturation : CGFloat = 0
        var brightness : CGFloat = 0
        var alpha : CGFloat = 0
        
        if getHue(&hue, saturation: &saturation, brightness: &brightness, alpha: &alpha) {
            return SKColor(hue: hue, saturation: saturation, brightness: brightness * factor, alpha: alpha)
        } else {
            return self;
        }
    }
    
    /// Calculates the inverse of the current SKColor
    public var inverseColor: SKColor {
        let components = self.cgColor.components
        
        return SKColor(red: 1.0 - components![0], green: 1.0 - components![1], blue: 1.0 - components![2], alpha: components![3])
    }
}
