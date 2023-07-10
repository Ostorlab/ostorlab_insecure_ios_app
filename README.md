# Ostorlab iOS Vulnerable App

This repository contains the source code for an iOS app intentionally made vulnerable for testing purposes.
The app is designed to exhibit a wide variety of security vulnerabilities that are common in mobile applications.
It's recommended to use this app as a playground to test and learn about different iOS security vulnerabilities.

## Vulnerabilities

Here are the vulnerabilities that the app demonstrates:

* __Biometric None Cryptobject (`biometric_none_cryptobject.dart`)__: Demonstrates vulnerabilities associated with incorrect
  implementation or lack of cryptographic protection in biometric authentication.

* __ECB Cipher Mode (`ecb_cipher_mode.dart`)__: Shows the weaknesses of using the ECB (Electronic CodeBook) mode of operation
  for cryptographic ciphers.

* __Insecure Commands (`insecure_commands.dart`)__: Illustrates vulnerabilities when insecure or system commands are executed
from the application.

* __Reflection API (`reflection_api.dart`)__: Provides instances of unsafe usage of reflection APIs.

* __TLS Traffic (`tls_traffic.dart`)__: Illustrates potential security threats when using unencrypted or improperly encrypted
Transport Layer Security (TLS) traffic.

* __Clear Text Traffic (`clear_text_traffic.dart`)__: Highlights the risks associated with transmitting sensitive data over
clear text traffic.

* __Hardcoded Credentials in URL (`hardcoded_creds_in_url.dart`)__: Demonstrates the risk of hardcoding sensitive credentials
within URLs.

* __Insecure Random (`insecure_random.dart`)__: Showcases the issues with using insecure random number generators for sensitive
operations.

* __Oracle Padding (`oracle_padding.dart`)__: Illustrates the potential dangers of oracle padding vulnerabilities.

* __SQLite Database Call (`sqlite_database_call.dart`)__: Showcases insecure practices related to SQLite database calls.

* __Webview Insecure Settings (`webview_insecure_settings.dart`)__: Demonstrates potential vulnerabilities with insecure WebView
settings.

* __Command Exec (`command_exec.dart`)__: Displays potential issues when executing system commands.

* __Hash Call (`hash_call.dart`)__: Demonstrates improper usage of hash functions.

* __Insecure Shared Preferences (`insecure_shared_preferences.dart`)__: Shows risks related to insecure handling of shared
preferences.

* __Path Traversal (`path_traversal.dart`)__: Showcases the potential dangers of path traversal vulnerabilities.

* __Static IV (`static_iv.dart`)__: Demonstrates the security risks associated with using static initialization vectors in
encryption.

## Installation

Please follow the standard iOS application building process for installation.

// TODO.

## Usage
To use the app, simply run it on your iOS device or emulator. You can explore different vulnerabilities by navigating
through the app's UI.

// TODO

## Disclaimer
This app is intentionally vulnerable and therefore not intended for production use. Use it at your own risk. The authors
are not responsible for any misuse or damage caused by this program.

## Contribution
Contributions are always welcome! Please feel free to create issues for bug reports or enhancement suggestions, and make
pull requests to improve the application.

# Building and Installing the App
Follow these steps to build and install the Ostorlab Insecure ios App:
## Prerequisites
* [Flutter SDK](https://flutter.dev/docs/get-started/install)
* [Xcode](https://developer.apple.com/xcode/)

## Building the App
1. Clone the repository.
Clone the repository: Run the following command in your terminal or command prompt to clone the repository to your local machine:
```bash
git clone https://github.com/Ostorlab/ostorlab_insecure_ios_app
```
2. Navigate to the Flutter project: Change directory to the ostorlab_insecure_ios_app directory within the cloned repository:
```bash
cd ostorlab_insecure_flutter_app  
```
3. Get Flutter dependencies: Run the following command to fetch the required dependencies for the Flutter project:
```bash
flutter pub get
```
4. Build the Flutter project: Run the following command to build the Flutter project:
```bash
flutter build ios
```
5. Open the project in Xcode: Run the following command to open the project in Xcode:
```bash
open ios/Runner.xcworkspace
```
6. Select a development team: In Xcode, select a development team to use for provisioning the app. To do this, select a team from the Signing & Capabilities tab of the Runner project.
7. Build and run the app: In Xcode, click the Run button to build and run the app on your iOS device or emulator.
