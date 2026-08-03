# Microsoft Cognitive Services Speech SDK for Swift Package Manager

This repository provides Swift Package Manager (SPM) support for the Microsoft Cognitive Services Speech SDK on Apple platforms.

## Overview

The Speech SDK enables speech-to-text, text-to-speech, translation, and other speech AI capabilities powered by Azure AI Speech.

This repository contains the Swift Package Manager package definition and distribution artifacts needed to consume the Speech SDK from Apple applications.

## Getting Started

In Xcode:

1. Select **File > Add Package Dependencies...**
2. Enter the repository URL `https://github.com/microsoft/speech-sdk-spm`
3. Choose the desired version
4. When Xcode shows package products, select **only one** product and add it to your app target:
	- **MicrosoftCognitiveServicesSpeech-iOS**: Standard iOS SDK
	- **MicrosoftCognitiveServicesSpeechEmbedded-iOS**: iOS SDK with on-device (embedded) speech
	- **MicrosoftCognitiveServicesSpeech-macOS**: Standard macOS SDK

Important: Do not add multiple products from this package to the same app target.

## Usage

```swift
import MicrosoftCognitiveServicesSpeech
```
