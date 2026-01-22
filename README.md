# GradientFlow

A customizable animated gradient text label SDK for iOS.

![Swift](https://img.shields.io/badge/Swift-5.9+-orange.svg)
![Platform](https://img.shields.io/badge/Platform-iOS%2013.0+-lightgrey.svg)
![License](https://img.shields.io/badge/License-MIT-blue.svg)

## Features

✨ **Multiple Gradient Directions** - Left to Right, Right to Left, Top to Bottom, Bottom to Top  
🎬 **Smooth Animations** - Seamless infinite loop animations  
🎨 **Customizable Colors** - Set any colors you want  
⚙️ **Easy Configuration** - Simple builder pattern API  

## Preview

```swift
// Animated gradient text with smooth infinite loop
let label = GradientTextLabel.create()
    .setText("GRADIENT")
    .setColors([.systemGreen, .systemBlue])
    .setAnimated(true)
```

## Installation

### Swift Package Manager

#### Xcode

1. In Xcode, select `File` → `Add Package Dependencies...`
2. Enter the repository URL:
```
https://github.com/woolnd/GradientFlow
```
3. Select the version and add to your project

#### Package.swift

Add the following to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/YOUR_USERNAME/GradientFlow", from: "1.0.0")
]
```

## Usage

### Basic Usage

```swift
import GradientFlow

let gradientLabel = GradientTextLabel()
gradientLabel.text = "Hello World"
gradientLabel.fontSize = 32
gradientLabel.colors = [.systemBlue, .systemPurple]

view.addSubview(gradientLabel)
gradientLabel.frame = CGRect(x: 40, y: 250, width: 300, height: 90)
```

### Builder Pattern

```swift
let label = GradientTextLabel.create()
    .setText("Gradient Text")
    .setFontSize(28)
    .setColors([
        UIColor(red: 0.2, green: 0.8, blue: 0.5, alpha: 1.0),
        UIColor(red: 0.2, green: 0.6, blue: 1.0, alpha: 1.0)
    ])
    .setGradientDirection(.leftToRight)
    .setAnimated(true)
    .setAnimationDirection(.leftToRight)
    .setAnimationDuration(3.0)

view.addSubview(label)
```

## Customization

### Gradient Direction

Set the direction of the gradient:

```swift
label.gradientDirection = .leftToRight  // Left → Right
label.gradientDirection = .rightToLeft  // Right → Left
label.gradientDirection = .topToBottom  // Top → Bottom
label.gradientDirection = .bottomToTop  // Bottom → Top
```

### Animation

Control animation settings:

```swift
// Enable/disable animation
label.isAnimated = true

// Animation direction
label.animationDirection = .leftToRight  // Left → Right
label.animationDirection = .rightToLeft  // Right → Left
label.animationDirection = .topToBottom  // Top → Bottom
label.animationDirection = .bottomToTop  // Bottom → Top

// Animation speed (in seconds)
label.animationDuration = 4.0
```

### Colors

Customize gradient colors:

```swift
// Two-color gradient
label.colors = [.red, .blue]

// Multi-color gradient
label.colors = [.red, .yellow, .green, .blue]

// Custom colors
label.colors = [
    UIColor(red: 0.2, green: 0.8, blue: 0.5, alpha: 1.0),
    UIColor(red: 0.2, green: 0.6, blue: 1.0, alpha: 1.0)
]
```

### Text Style

Customize text appearance:

```swift
label.text = "Your Text"
label.fontSize = 24
label.fontWeight = .bold  // .regular, .medium, .semibold, .heavy
```

## Examples

### Static Gradient

```swift
let staticLabel = GradientTextLabel.create()
    .setText("Static Gradient")
    .setFontSize(32)
    .setColors([.systemPink, .systemOrange])
    .setGradientDirection(.topToBottom)
    .setAnimated(false)
```

### Animated Gradient

```swift
let animatedLabel = GradientTextLabel.create()
    .setText("Animated Gradient")
    .setFontSize(28)
    .setColors([.systemTeal, .systemBlue, .systemPurple])
    .setAnimated(true)
    .setAnimationDirection(.leftToRight)
    .setAnimationDuration(3.5)
```

### Vertical Animation

```swift
let verticalLabel = GradientTextLabel.create()
    .setText("Vertical Flow")
    .setFontSize(24)
    .setColors([.systemGreen, .systemYellow])
    .setGradientDirection(.topToBottom)
    .setAnimated(true)
    .setAnimationDirection(.topToBottom)
    .setAnimationDuration(5.0)
```

## API Reference

### Properties

| Property | Type | Default | Description |
|----------|------|---------|-------------|
| `text` | `String` | `"Gradient Text"` | The text to display |
| `fontSize` | `CGFloat` | `24` | Font size in points |
| `fontWeight` | `UIFont.Weight` | `.bold` | Font weight |
| `colors` | `[UIColor]` | Green & Blue | Gradient colors array |
| `gradientDirection` | `GradientDirection` | `.leftToRight` | Direction of gradient |
| `isAnimated` | `Bool` | `true` | Enable/disable animation |
| `animationDirection` | `AnimationDirection` | `.leftToRight` | Direction of animation |
| `animationDuration` | `TimeInterval` | `4.0` | Animation duration in seconds |

### Methods

| Method | Description |
|--------|-------------|
| `create()` | Creates a new instance |
| `setText(_:)` | Sets the text |
| `setFontSize(_:)` | Sets the font size |
| `setFontWeight(_:)` | Sets the font weight |
| `setColors(_:)` | Sets gradient colors |
| `setGradientDirection(_:)` | Sets gradient direction |
| `setAnimated(_:)` | Enables/disables animation |
| `setAnimationDirection(_:)` | Sets animation direction |
| `setAnimationDuration(_:)` | Sets animation duration |

## Requirements

- iOS 13.0+
- Swift 5.9+
- Xcode 15.0+

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## Author

wodnd - [GitHub](https://github.com/YOUR_USERNAME)

## Acknowledgments

- Inspired by modern UI design trends
- Built with ❤️ for the iOS community
