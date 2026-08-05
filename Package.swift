// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
// Binary targets (pre-built XCFrameworks) require swift-tools-version 5.3 / Xcode 12+.

import PackageDescription

// This single package exposes three products matching the CocoaPods pod names:
//   MicrosoftCognitiveServicesSpeech-iOS      — standard iOS SDK
//   MicrosoftCognitiveServicesSpeech-macOS    — standard macOS SDK
//   MicrosoftCognitiveServicesSpeechEmbedded-iOS — embedded (on-device) iOS SDK
//
// All three ship as separate XCFrameworks with separate checksums.
// Import remains `import MicrosoftCognitiveServicesSpeech` in your source files.

let package = Package(
    name: "MicrosoftCognitiveServicesSpeech",
    platforms: [
        .iOS(.v11),
        .macOS(.v10_13)
    ],
    products: [
        .library(
            name: "MicrosoftCognitiveServicesSpeech-iOS",
            targets: ["MicrosoftCognitiveServicesSpeech-iOS"]
        ),
        .library(
            name: "MicrosoftCognitiveServicesSpeech-macOS",
            targets: ["MicrosoftCognitiveServicesSpeech-macOS"]
        ),
        .library(
            name: "MicrosoftCognitiveServicesSpeechEmbedded-iOS",
            targets: ["MicrosoftCognitiveServicesSpeechEmbedded-iOS"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "MicrosoftCognitiveServicesSpeech-iOS",
            url: "https://csspeechstorage.blob.core.windows.net/drop/0.0.0-test2/MicrosoftCognitiveServicesSpeech-XCFramework-0.0.0-test2.zip",
            checksum: "d3eb539a556352f3f47881d71fb0e5777b2f3e9a4251d283c18c67ce996774b7"
        ),
        .binaryTarget(
            name: "MicrosoftCognitiveServicesSpeech-macOS",
            url: "https://csspeechstorage.blob.core.windows.net/drop/0.0.0-test2/MicrosoftCognitiveServicesSpeech-MacOSXCFramework-0.0.0-test2.zip",
            checksum: "d3eb539a556352f3f47881d71fb0e5777b2f3e9a4251d283c18c67ce996774b7"
        ),
        .binaryTarget(
            name: "MicrosoftCognitiveServicesSpeechEmbedded-iOS",
            url: "https://csspeechstorage.blob.core.windows.net/drop/0.0.0-test2/MicrosoftCognitiveServicesSpeech-EmbeddedXCFramework-0.0.0-test2.zip",
            checksum: "d3eb539a556352f3f47881d71fb0e5777b2f3e9a4251d283c18c67ce996774b7"
        )
    ]
)
