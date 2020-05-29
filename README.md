# Null safety example: A CLI-app for calculating lix

This is a small code example of an app that calculates the 'lix' readability
index for a text file. The implementation uses the new Dart null safety feature,
and is means to demonstrate how this feature works in a practical example,
as-well-as serve as a demonstration of how to configure and run code with null
safety at it's current technical preview stage.

# Running the example code

The code example only works with the null safety technical preview 1 build, Dart
SDK version `2.9.0-11.0.dev`. You will need to download a copy of this Dart SDK
even if you have a Flutter or Dart SDK installed already, and you want to use
this preview SDK only for experimenting with null safety. Specifically, do not
use it for any kind of production coding.

## Dart preview SDK installation

  1. Download the preview SDK: [Windows](https://storage.googleapis.com/dart-archive/channels/dev/release/2.9.0-11.0.dev/sdk/dartsdk-windows-x64-release.zip), [macOS](https://storage.googleapis.com/dart-archive/channels/dev/release/2.9.0-11.0.dev/sdk/dartsdk-macos-x64-release.zip), [Linux](https://storage.googleapis.com/dart-archive/channels/dev/release/2.9.0-11.0.dev/sdk/dartsdk-linux-x64-release.zip)
    
  1. Unzip the SDK to a folder, e.g. `/Users/michael/dev/preview/dart-sdk` or `C:\Users\michael\dev\preview\dart-sdk\`

## Running from the terminal/command-prompt

Because null safety is still in technical preview, we need to pass a so-called
'experiment flag' when invoking and Dart command in the terminal, which looks
like this: `--enable-experiment=non-nullable`.

To run the main app, type these commands in the terminal/command-prompt:

  - Windows:
    - `cd <the folder that contains this code example>`
    - `C:\Users\michael\dev\preview\dart-sdk\bin\dart --enable-experiment=non-nullable bin\main.dart text\lorem-ipsum.txt`
  - macOS/Linux:
    - `cd <the folder that contains this code example>`
    - `/Users/michael/dev/preview/dart-sdk/bin/dart --enable-experiment=non-nullable bin/main.dart text/lorem-ipsum.txt`

## Running from VSCode

TODO

## Running from Android Studio

TODO
