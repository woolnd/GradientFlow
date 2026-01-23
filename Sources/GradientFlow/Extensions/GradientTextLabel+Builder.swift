//
//  File.swift
//  GradientFlow
//
//  Created by wodnd on 1/23/26.
//

import Foundation
import UIKit

extension GradientTextLabel {
    
    /// Creates a gradient text label
    /// - Returns: A new instance
    public static func create() -> GradientTextLabel {
        return GradientTextLabel()
    }
    
    /// Sets the text
    /// - Parameter text: The text to display
    /// - Returns: Self (for chaining)
    @discardableResult
    public func setText(_ text: String) -> Self {
        self.text = text
        return self
    }
    
    /// Sets the font size
    /// - Parameter size: The font size
    /// - Returns: Self (for chaining)
    @discardableResult
    public func setFontSize(_ size: CGFloat) -> Self {
        self.fontSize = size
        return self
    }
    
    /// Sets the font weight
    /// - Parameter weight: The font weight
    /// - Returns: Self (for chaining)
    @discardableResult
    public func setFontWeight(_ weight: UIFont.Weight) -> Self {
        self.fontWeight = weight
        return self
    }
    
    /// Sets the gradient colors
    /// - Parameter colors: An array of colors
    /// - Returns: Self (for chaining)
    @discardableResult
    public func setColors(_ colors: [UIColor]) -> Self {
        self.colors = colors
        return self
    }
    
    /// Sets the gradient direction
    /// - Parameter direction: The gradient direction
    /// - Returns: Self (for chaining)
    @discardableResult
    public func setGradientDirection(_ direction: GradientDirection) -> Self {
        self.gradientDirection = direction
        return self
    }
    
    /// Enables or disables animation
    /// - Parameter animated: Whether the animation is enabled
    /// - Returns: Self (for chaining)
    @discardableResult
    public func setAnimated(_ animated: Bool) -> Self {
        self.isAnimated = animated
        return self
    }
    
    /// Sets the animation direction
    /// - Parameter direction: The animation direction
    /// - Returns: Self (for chaining)
    @discardableResult
    public func setAnimationDirection(_ direction: AnimationDirection) -> Self {
        self.animationDirection = direction
        return self
    }
    
    /// Sets the animation duration
    /// - Parameter duration: Animation duration (in seconds)
    /// - Returns: Self (for chaining)
    @discardableResult
    public func setAnimationDuration(_ duration: TimeInterval) -> Self {
        self.animationDuration = duration
        return self
    }
}
