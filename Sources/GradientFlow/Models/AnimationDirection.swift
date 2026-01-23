//
//  File.swift
//  GradientFlow
//
//  Created by wodnd on 1/22/26.
//

import Foundation

/// Animation direction
public enum AnimationDirection {
    
    /// Moves from left to right
    case leftToRight
    
    /// Moves from right to left
    case rightToLeft
    
    /// Moves from top to bottom
    case topToBottom
    
    /// Moves from bottom to top
    case bottomToTop
    
    /// Key path used for the animation
    internal var keyPath: String {
        switch self {
        case .leftToRight, .rightToLeft:
            return "x"
        case .topToBottom, .bottomToTop:
            return "y"
        }
    }
}

