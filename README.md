# Image Recognition App 📱

A modern iOS application built with SwiftUI that combines optical character recognition (OCR) with real-time translation capabilities. Select an image, extract text using Apple's Vision framework, and translate it instantly using the built-in Translation API.

![iOS](https://img.shields.io/badge/iOS-17.0%2B-blue?style=flat-square&logo=ios&logoColor=white)
![Swift](https://img.shields.io/badge/Swift-5.9%2B-orange?style=flat-square&logo=swift&logoColor=white)
![SwiftUI](https://img.shields.io/badge/SwiftUI-Framework-blue?style=flat-square&logo=swift&logoColor=white)
![Vision](https://img.shields.io/badge/Vision-Framework-purple?style=flat-square&logo=apple&logoColor=white)
![Translation](https://img.shields.io/badge/Translation-API-green?style=flat-square&logo=apple&logoColor=white)
![Xcode](https://img.shields.io/badge/Xcode-15.0%2B-blue?style=flat-square&logo=xcode&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-yellow?style=flat-square&logo=opensourceinitiative&logoColor=white)
![Learning](https://img.shields.io/badge/Purpose-EDUCATIONAL-brightgreen?style=flat-square&logo=graduationcap&logoColor=white)

## ✨ Features

- **Image Gallery**: Browse through a collection of sample images with text
- **Text Recognition**: Extract text from images using Apple's advanced Vision framework
- **Real-time Translation**: Translate recognized text into multiple languages
- **Modern UI**: Clean, intuitive interface built with SwiftUI
- **Custom Theme**: Beautiful background design with consistent styling
- **Progress Indicators**: Visual feedback during text processing

## 🛠 Technology Stack

- **SwiftUI**: Modern declarative UI framework
- **Vision Framework**: Apple's machine learning framework for text recognition
- **Translation API**: Built-in iOS translation capabilities
- **Swift**: Native iOS development language
- **iOS 17.0+**: Minimum deployment target

## 📱 Screenshots

The app includes a gallery of sample images (sign1-sign9) that demonstrate various text recognition scenarios.

## 🏗 Project Structure

```
ImageRecongnitionApp/
├── App/
│   └── ImageRecongnitionAppApp.swift          # Main app entry point
├── Core/
│   ├── Models/
│   │   └── TextRecognizer.swift               # OCR logic using Vision framework
│   ├── Views/
│   │   ├── ContentView.swift                  # Main navigation view
│   │   ├── ImageGalleryView.swift             # Image selection grid
│   │   ├── TextRecognitionView.swift          # Image display and processing
│   │   └── TranslationView.swift              # Text display and translation
│   └── Modifiers/
│       └── TrailTheme.swift                   # Custom theme modifier
└── Resources/
    └── Assets.xcassets/                       # Images and app assets
```

## 🚀 Getting Started

### Prerequisites

- Xcode 15.0 or later
- iOS 17.0 or later
- macOS Ventura or later

### Installation

1. Clone the repository:
```bash
git clone https://github.com/dmakarau/ImageRecognitionApp.git
```

2. Open the project in Xcode:
```bash
cd ImageRecognitionApp
open ImageRecongnitionApp.xcodeproj
```

3. Build and run the project:
   - Select your target device or simulator
   - Press `Cmd + R` to build and run

## 🎯 Usage

1. **Launch the App**: Open the app to see the main gallery view
2. **Select an Image**: Tap on any image from the 3x3 grid to analyze it
3. **View Results**: The app will automatically extract text from the selected image
4. **Translate**: Tap the "Translate" button to open the translation interface
5. **Choose Language**: Select your target language and view the translation

## 🔧 Core Components

### TextRecognizer
The heart of the OCR functionality, using Apple's Vision framework:
- Processes images with high accuracy recognition level
- Extracts text observations and candidates
- Returns recognized text as a concatenated string

### ImageGalleryView
A responsive grid layout displaying sample images:
- 3x3 grid of navigation-enabled image thumbnails
- Rounded corners and padding for visual appeal
- Navigation links to detailed text recognition views

### TranslationView
Handles the translation workflow:
- Displays recognized text with loading states
- Integrates with iOS Translation API
- Provides accessible translation interface

## 🎨 Design Features

- **Custom Theme**: Consistent background and styling throughout the app
- **Responsive Layout**: Adapts to different screen sizes and orientations
- **Loading States**: Visual feedback during processing
- **Navigation**: Intuitive flow between screens

## 📋 Requirements

- iOS 17.0+
- Xcode 15.0+
- Swift 5.9+

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👨‍💻 Author

**Denis Makarau**
- GitHub: [@dmakarau](https://github.com/dmakarau)

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 🔮 Future Enhancements

- [ ] Camera integration for live photo capture
- [ ] Support for multiple image formats
- [ ] Text editing capabilities before translation
- [ ] History of recognized texts
- [ ] Batch processing of multiple images
- [ ] Export functionality for recognized text
- [ ] Custom image import from photo library

## 📝 Notes

This project was created as a learning exercise to explore:
- SwiftUI's modern declarative syntax
- Apple's Vision framework capabilities
- iOS Translation API integration
- Clean architecture patterns in iOS development

---

⭐ If you found this project helpful, please consider giving it a star!