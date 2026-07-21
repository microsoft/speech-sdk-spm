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
            url: "https://csspeechstorage.blob.core.windows.net/drop/1.51.0/MicrosoftCognitiveServicesSpeech-XCFramework-1.51.0.zip",
            checksum: "291c9f1f0d120144d9c1795aec6fe5764889e96f71239fb9abf1027a324d80df"
        ),
        .binaryTarget(
            name: "MicrosoftCognitiveServicesSpeech-macOS",
            url: "https://csspeechstorage.blob.core.windows.net/drop/1.51.0/MicrosoftCognitiveServicesSpeech-MacOSXCFramework-1.51.0.zip",
            checksum: "61702cc22f79128f80962c3d43e8d472794815375e6f4354737cd389cac118f4"
        ),
        .binaryTarget(
            name: "MicrosoftCognitiveServicesSpeechEmbedded-iOS",
            url: "https://csspeechstorage.blob.core.windows.net/drop/1.51.0/MicrosoftCognitiveServicesSpeech-EmbeddedXCFramework-1.51.0.zip",
            checksum: "22ddf4f626c57171bd61977c9ec59a937b8d5f90608cd8e16a2d32298dfcda4e"
        )
    ]
)
