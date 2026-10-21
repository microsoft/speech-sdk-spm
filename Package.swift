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
            url: "https://csspeechstorage.blob.core.windows.net/drop/1.53.0/MicrosoftCognitiveServicesSpeech-XCFramework-1.53.0.zip",
            checksum: "0595535e6e4fdaadd30c4651817e66ddd5392db05db4f94fe3a6c68e8dca9a6f"
        ),
        .binaryTarget(
            name: "MicrosoftCognitiveServicesSpeech-macOS",
            url: "https://csspeechstorage.blob.core.windows.net/drop/1.53.0/MicrosoftCognitiveServicesSpeech-MacOSXCFramework-1.53.0.zip",
            checksum: "e07ac31d67b92e2ec57ed3ee1ae8fa3e779f1f60a7fbce33cd0097fe19507021"
        ),
        .binaryTarget(
            name: "MicrosoftCognitiveServicesSpeechEmbedded-iOS",
            url: "https://csspeechstorage.blob.core.windows.net/drop/1.53.0/MicrosoftCognitiveServicesSpeech-EmbeddedXCFramework-1.53.0.zip",
            checksum: "0952343fdbd524948bb05964d20851e848a5e0a2d468d52ae23b91d27994cfff"
        )
    ]
)
