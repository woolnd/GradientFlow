//
//  File.swift
//  GradientFlow
//
//  Created by wodnd on 1/23/26.
//

import Foundation
import UIKit

/// A gradient text label
public class GradientTextLabel: UIView {
    
    // MARK: - UI Components
    internal let gradientLayer = CAGradientLayer()
    internal let textMask = CATextLayer()
    
    // MARK: - Public Properties
    
    /// The text to display
    public var text: String = "Gradient Text" {
        didSet { updateText() }
    }
    
    /// Font size
    public var fontSize: CGFloat = 24 {
        didSet { updateText() }
    }
    
    /// Font weight
    public var fontWeight: UIFont.Weight = .bold {
        didSet { updateText() }
    }
    
    /// Gradient color array
    public var colors: [UIColor] = [
        UIColor(red: 0.2, green: 0.8, blue: 0.5, alpha: 1.0),
        UIColor(red: 0.2, green: 0.6, blue: 1.0, alpha: 1.0)
    ] {
        didSet { updateGradient() }
    }
    
    /// Gradient direction
    public var gradientDirection: GradientDirection = .leftToRight {
        didSet { updateGradient() }
    }
    
    /// Whether animation is enabled
    public var isAnimated: Bool = true {
        didSet {
            isAnimated ? startAnimation() : stopAnimation()
        }
    }
    
    /// Animation direction
    public var animationDirection: AnimationDirection = .leftToRight {
        didSet {
            if isAnimated {
                startAnimation()
            }
        }
    }
    
    /// Animation duration (in seconds)
    public var animationDuration: TimeInterval = 4.0 {
        didSet {
            if isAnimated {
                startAnimation()
            }
        }
    }
    
    // MARK: - Initialization
    
    public init() {
        super.init(frame: .zero)
        setupLayers()
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayers()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupLayers()
    }
    
    // MARK: - Setup
    
    private func setupLayers() {
        backgroundColor = .clear
        layer.addSublayer(gradientLayer)
        updateGradient()
        updateText()
    }
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        
        textMask.frame = bounds
        
        // Adjust gradient size based on animation direction
        switch animationDirection {
        case .leftToRight, .rightToLeft:
            gradientLayer.frame = CGRect(
                x: 0,
                y: 0,
                width: bounds.width * 3,
                height: bounds.height
            )
        case .topToBottom, .bottomToTop:
            gradientLayer.frame = CGRect(
                x: 0,
                y: 0,
                width: bounds.width,
                height: bounds.height * 3
            )
        }
        
        if isAnimated {
            startAnimation()
        }
    }
    
    // MARK: - Update Methods
    
    /// Updates the gradient
    internal func updateGradient() {
        // Set gradient direction
        switch gradientDirection {
        case .leftToRight:
            gradientLayer.startPoint = CGPoint(x: 0, y: 0.5)
            gradientLayer.endPoint = CGPoint(x: 1, y: 0.5)
        case .rightToLeft:
            gradientLayer.startPoint = CGPoint(x: 1, y: 0.5)
            gradientLayer.endPoint = CGPoint(x: 0, y: 0.5)
        case .topToBottom:
            gradientLayer.startPoint = CGPoint(x: 0.5, y: 0)
            gradientLayer.endPoint = CGPoint(x: 0.5, y: 1)
        case .bottomToTop:
            gradientLayer.startPoint = CGPoint(x: 0.5, y: 1)
            gradientLayer.endPoint = CGPoint(x: 0.5, y: 0)
        }
        
        // Create repeated color pattern for infinite looping
        let cgColors = colors.map { $0.cgColor }
        var repeatedColors: [CGColor] = []
        var locations: [NSNumber] = []
        
        // Repeat pattern 3 times for seamless animation
        for i in 0...6 {
            repeatedColors.append(cgColors[i % cgColors.count])
            locations.append(NSNumber(value: Double(i) / 6.0))
        }
        
        gradientLayer.colors = repeatedColors
        gradientLayer.locations = locations
    }
    
    /// Updates the text
    internal func updateText() {
        textMask.string = text
        textMask.alignmentMode = .center
        textMask.contentsScale = UIScreen.main.scale
        
        let uiFont = UIFont.systemFont(ofSize: fontSize, weight: fontWeight)
        textMask.font = CGFont(uiFont.fontName as CFString)
        textMask.fontSize = uiFont.pointSize
        textMask.foregroundColor = UIColor.white.cgColor
        
        layer.mask = textMask
    }
}
