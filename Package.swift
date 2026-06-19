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
            url: "https://csspeechstorage.blob.core.windows.net/drop/1.50.0/MicrosoftCognitiveServicesSpeech-XCFramework-1.50.0.zip",
            checksum: "1dc8b4799eacbe254966218688a085bf49c38379b56b63e4d626992a96a8d79f"
        ),
        .binaryTarget(
            name: "MicrosoftCognitiveServicesSpeech-macOS",
            url: "https://csspeechstorage.blob.core.windows.net/drop/1.50.0/MicrosoftCognitiveServicesSpeech-MacOSXCFramework-1.50.0.zip",
            checksum: "3b748dd2222c7ae06567878467bbc39b17a8dea015284a9a3117b0ea12a55a0b"
        ),
        .binaryTarget(
            name: "MicrosoftCognitiveServicesSpeechEmbedded-iOS",
            url: "https://csspeechstorage.blob.core.windows.net/drop/1.50.0/MicrosoftCognitiveServicesSpeech-EmbeddedXCFramework-1.50.0.zip",
            checksum: "ae84500b5597aece0900e6e7f7f919dc6645698c40c50cadc8eb453524198bae"
        )
    ]
)
