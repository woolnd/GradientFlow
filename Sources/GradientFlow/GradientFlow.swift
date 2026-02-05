// The Swift Programming Language
// https://docs.swift.org/swift-book
// GradientFlow.swift
// GradientFlow SDK - Entry Point

import UIKit

/// Main namespace for the GradientFlow SDK
public struct GradientFlow {
    
    /// SDK version
    public static let version = "1.0.0"
    
    /// SDK name
    public static let name = "GradientFlow"
    
    // MARK: - Quick Creation
    
    /// Quickly create a gradient text label
    /// - Returns: A new GradientTextLabel instance
    @MainActor
    public static func createLabel() -> GradientTextLabel {
        return GradientTextLabel.create()
    }
    
    /// Quickly create an animated gradient text label
    /// - Parameters:
    ///   - text: The text to display
    ///   - colors: An array of gradient colors
    /// - Returns: A configured GradientTextLabel instance
    @MainActor public static func createAnimatedLabel(
        text: String,
        colors: [UIColor]
    ) -> GradientTextLabel {
        return GradientTextLabel.create()
            .setText(text)
            .setColors(colors)
            .setAnimated(true)
    }
    
    // MARK: - Preset Colors
    
    /// Predefined color presets
    public struct ColorPresets {
        
        /// Cool green-blue (default)
        public static let coolMint: [UIColor] = [
            UIColor(red: 0.2, green: 0.8, blue: 0.5, alpha: 1.0),
            UIColor(red: 0.2, green: 0.6, blue: 1.0, alpha: 1.0)
        ]
        
        /// Warm orange-pink
        public static let warmSunset: [UIColor] = [
            UIColor(red: 1.0, green: 0.6, blue: 0.2, alpha: 1.0),
            UIColor(red: 1.0, green: 0.3, blue: 0.5, alpha: 1.0)
        ]
        
        /// Purple-pink
        public static let purpleDream: [UIColor] = [
            UIColor(red: 0.6, green: 0.3, blue: 1.0, alpha: 1.0),
            UIColor(red: 1.0, green: 0.4, blue: 0.7, alpha: 1.0)
        ]
        
        /// Neon blue-purple
        public static let neonNight: [UIColor] = [
            UIColor(red: 0.2, green: 0.4, blue: 1.0, alpha: 1.0),
            UIColor(red: 0.8, green: 0.2, blue: 1.0, alpha: 1.0)
        ]
        
        /// Green-yellow
        public static let freshGreen: [UIColor] = [
            UIColor(red: 0.2, green: 0.9, blue: 0.3, alpha: 1.0),
            UIColor(red: 0.9, green: 0.9, blue: 0.2, alpha: 1.0)
        ]
        
        /// Rainbow
        public static let rainbow: [UIColor] = [
            .systemRed,
            .systemOrange,
            .systemYellow,
            .systemGreen,
            .systemBlue,
            .systemPurple
        ]
    }
    
    // MARK: - Configuration
    
    /// Global default configuration
    public struct Configuration {
        
        /// Default font size
        public static let defaultFontSize: CGFloat = 24
        
        /// Default font weight
        public static let defaultFontWeight: UIFont.Weight = .bold
        
        /// Default animation duration
        public static let defaultAnimationDuration: TimeInterval = 4.0
        
        /// Default gradient colors
        public static let defaultColors: [UIColor] = ColorPresets.coolMint
        
        /// Whether animation is enabled by default
        public static let defaultIsAnimated: Bool = true
    }
}

// MARK: - Convenience Extensions

extension GradientTextLabel {
    
    /// Apply a preset color set
    /// - Parameter preset: A color preset
    /// - Returns: Self (for chaining)
    @discardableResult
    public func setColorPreset(_ preset: [UIColor]) -> Self {
        return setColors(preset)
    }
}

//// 1. Basic creation
//let label = GradientFlow.createLabel()
//
//// 2. Quick creation
//let label = GradientFlow.createAnimatedLabel(
//    text: "Hello",
//    colors: GradientFlow.ColorPresets.purpleDream
//)
//
//// 3. Using a preset
//let label = GradientTextLabel.create()
//    .setText("Rainbow!")
//    .setColorPreset(GradientFlow.ColorPresets.rainbow)
//
//// 4. Changing global defaults
//GradientFlow.Configuration.defaultFontSize = 32
//GradientFlow.Configuration.defaultColors = GradientFlow.ColorPresets.neonNight
