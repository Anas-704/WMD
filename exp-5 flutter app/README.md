# Experiment 5 – Flutter Hello App

## Requirements

Install the following:

- Flutter SDK
- IntelliJ IDEA
- Google Chrome

> Dart SDK is included with Flutter, so it does not need to be installed separately.
>
> Android Studio and Android Emulator are not required because the application is run using Google Chrome.

## Flutter SDK Configuration

Flutter SDK location used:

```text
C:\src\flutter
```

Add the Flutter `bin` folder to the system PATH:

```text
C:\src\flutter\bin
```

Dart SDK location used in IntelliJ IDEA:

```text
C:\src\flutter\bin\cache\dart-sdk
```

## Verify Flutter Installation

Open Command Prompt or IntelliJ IDEA Terminal and run:

```bash
flutter --version
```

This checks whether Flutter is installed and displays the Flutter and Dart versions.

Versions used:

```text
Flutter 3.47.2
Dart 3.13.2
```

Check the Flutter environment:

```bash
flutter doctor
```

This checks the Flutter development environment. Chrome should be detected because the project will run as a Flutter Web application.

## IntelliJ IDEA Configuration

1. Open IntelliJ IDEA.
2. Install/enable the **Flutter** and **Dart** plugins if requested.
3. Configure the Dart SDK:

```text
C:\src\flutter\bin\cache\dart-sdk
```

4. Enable Dart support for the project if IntelliJ asks.

## Check Available Devices

Run:

```bash
flutter devices
```

Chrome should appear in the available devices.

Example:

```text
Chrome (web)
```

Chrome is used as the target device for this experiment.

## Create the Flutter Project

Experiment 5 folder:

```text
C:\Users\CNS-26\Desktop\04\WMD\exp-5 Flutter App
```

Open the IntelliJ IDEA Terminal and run:

```bash
cd "C:\Users\CNS-26\Desktop\04\WMD\exp-5 Flutter App"
```

Create the Flutter project:

```bash
flutter create hello_app
```

Enter the project:

```bash
cd hello_app
```

Final project location:

```text
C:\Users\CNS-26\Desktop\04\WMD\exp-5 Flutter App\hello_app
```

## Open the Project in IntelliJ IDEA

Open the actual `hello_app` folder directly in IntelliJ IDEA.

The project root should contain:

```text
android/
ios/
lib/
web/
windows/
pubspec.yaml
```

## Project Structure

Flutter creates the following structure:

```text
hello_app/
│
├── android/
├── ios/
├── lib/
│   └── main.dart
├── test/
├── web/
├── windows/
├── .gitignore
├── .metadata
├── analysis_options.yaml
├── pubspec.yaml
├── pubspec.lock
└── README.md
```

The main application file for this experiment is:

```text
lib/main.dart
```

## Run the Application

From the project directory, run:

```bash
flutter run -d chrome
```

This runs the Flutter application on Google Chrome. Chrome opens automatically with the application.

## Expected Output

The application displays:

```text
Hello App

Flutter Icon

Hello, Flutter!

Welcome to my first Flutter app.

[Say Hello] [Welcome]
```

## Test the Application

Click:

```text
Say Hello
```

The IntelliJ IDEA Terminal should display:

```text
Hello button pressed
```

Click:

```text
Welcome
```

The IntelliJ IDEA Terminal should display:

```text
Welcome button pressed
```

## Commands Used

| Purpose | Command |
|---|---|
| Check Flutter version | `flutter --version` |
| Check Flutter configuration | `flutter doctor` |
| Navigate to Experiment 5 | `cd "C:\Users\CNS-26\Desktop\04\WMD\exp-5 Flutter App"` |
| Create project | `flutter create hello_app` |
| Enter project | `cd hello_app` |
| Check available devices | `flutter devices` |
| Run on Chrome | `flutter run -d chrome` |

## Complete Command Sequence

```bash
flutter --version

flutter doctor

cd "C:\Users\CNS-26\Desktop\04\WMD\exp-5 Flutter App"

flutter create hello_app

cd hello_app

flutter devices

flutter run -d chrome
```

## Run the Project Again

After the project has already been created, do not run `flutter create hello_app` again.

Navigate directly to the project:

```bash
cd "C:\Users\CNS-26\Desktop\04\WMD\exp-5 Flutter App\hello_app"
```

Run:

```bash
flutter run -d chrome
```

## Final Project Structure

```text
WMD/
└── exp-5 Flutter App/
    └── hello_app/
        ├── android/
        ├── ios/
        ├── lib/
        │   └── main.dart
        ├── test/
        ├── web/
        ├── windows/
        ├── .gitignore
        ├── .metadata
        ├── analysis_options.yaml
        ├── pubspec.yaml
        ├── pubspec.lock
        └── README.md
```

## Final Verification

- Flutter SDK installed and verified
- Dart SDK configured
- IntelliJ IDEA configured
- Chrome detected
- Flutter project created
- `main.dart` ready
- Application runs on Chrome
- Both buttons tested
