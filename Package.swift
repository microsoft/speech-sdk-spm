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
            url: "https://csspeechstorage.blob.core.windows.net/drop/1.51.1/MicrosoftCognitiveServicesSpeech-XCFramework-1.51.1.zip",
            checksum: "ce43c363c4d81261fcccd3e85efc97d9a0698a1bb5ae113911bb4315a2dc1cff"
        ),
        .binaryTarget(
            name: "MicrosoftCognitiveServicesSpeech-macOS",
            url: "https://csspeechstorage.blob.core.windows.net/drop/1.51.1/MicrosoftCognitiveServicesSpeech-MacOSXCFramework-1.51.1.zip",
            checksum: "067bacff6e2ad4c08dc3a37f367b7e6f4fe66beb8fd626810bc5e352981a99f5"
        ),
        .binaryTarget(
            name: "MicrosoftCognitiveServicesSpeechEmbedded-iOS",
            url: "https://csspeechstorage.blob.core.windows.net/drop/1.51.1/MicrosoftCognitiveServicesSpeech-EmbeddedXCFramework-1.51.1.zip",
            checksum: "306922e20cd692f8a10aa6069f93a54aa00e3b22a01ddb9531fef0425c8ca9de"
        )
    ]
)
