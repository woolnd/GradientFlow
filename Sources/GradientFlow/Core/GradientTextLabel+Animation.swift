//
//  File.swift
//  GradientFlow
//
//  Created by wodnd on 1/23/26.
//

import Foundation
import UIKit

// MARK: - Animation
extension GradientTextLabel {
    
    /// Starts the animation
    internal func startAnimation() {
        stopAnimation()
        
        guard bounds.width > 0 && bounds.height > 0 else { return }
        
        let animation = CABasicAnimation(keyPath: "position.\(animationDirection.keyPath)")
        
        switch animationDirection {
        case .leftToRight:
            animation.fromValue = bounds.width * 1.5
            animation.toValue = bounds.width * 0.5
        case .rightToLeft:
            animation.fromValue = bounds.width * 0.5
            animation.toValue = bounds.width * 1.5
        case .topToBottom:
            animation.fromValue = bounds.height * 0.5
            animation.toValue = bounds.height * 1.5
        case .bottomToTop:
            animation.fromValue = bounds.height * 1.5
            animation.toValue = bounds.height * 0.5
        }
        
        animation.duration = animationDuration
        animation.repeatCount = .infinity
        animation.timingFunction = CAMediaTimingFunction(name: .linear)
        animation.isRemovedOnCompletion = false
        animation.fillMode = .forwards
        
        gradientLayer.add(animation, forKey: "gradientAnimation")
    }
    
    /// Stops the animation
    internal func stopAnimation() {
        gradientLayer.removeAnimation(forKey: "gradientAnimation")
    }
}
