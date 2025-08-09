# Muffin Flutter Template

A simple Flutter "Hello World" template app to get you started with Flutter development.

## Features

- Clean, minimal Flutter app structure
- Material Design 3 theming
- Simple counter functionality
- Basic widget testing
- Proper linting configuration

## Getting Started

### Prerequisites

- Flutter SDK (>=3.10.0)
- Dart SDK (>=3.0.0)

### Installation

1. Clone or download this template
2. Navigate to the project directory:
   ```bash
   cd muffin-flutter-template
   ```

3. Install dependencies:
   ```bash
   flutter pub get
   ```

4. Run the app:
   ```bash
   flutter run
   ```

### Project Structure

```
muffin-flutter-template/
├── lib/
│   └── main.dart          # Main application file
├── test/
│   └── widget_test.dart   # Widget tests
├── pubspec.yaml           # Dependencies and project configuration
├── analysis_options.yaml # Linting rules
└── README.md             # This file
```

## What's Included

- **Hello World App**: A simple app that displays "Hello World!" and includes a counter
- **Material Design**: Uses Material Design 3 with a purple color scheme
- **Testing**: Basic widget test to verify counter functionality
- **Linting**: Flutter recommended linting rules for clean code

## Customization

To customize this template for your project:

1. Update the app name in `pubspec.yaml`
2. Modify the `MyApp` and `MyHomePage` classes in `lib/main.dart`
3. Add your own widgets and screens
4. Update the tests in `test/widget_test.dart`

## Running Tests

```bash
flutter test
```

## Building for Release

### Android
```bash
flutter build apk --release
```

### iOS
```bash
flutter build ios --release
```

Happy coding! 🚀