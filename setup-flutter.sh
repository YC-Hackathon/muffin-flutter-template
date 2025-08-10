#!/bin/bash

# Flutter Setup Script for Freestyle Sandboxes
echo "🚀 Setting up Flutter for web development..."

# Set Flutter directory (use /root since we're running as root in containers)
FLUTTER_DIR="/root/flutter"
FLUTTER_BIN="$FLUTTER_DIR/bin/flutter"

# Check if Flutter is already installed and working
if [ -f "$FLUTTER_BIN" ] && [ -d "$FLUTTER_DIR/.git" ]; then
    echo "✅ Flutter is already installed at $FLUTTER_DIR"
    export PATH="$PATH:$FLUTTER_DIR/bin"
    flutter --version
    exit 0
fi

echo "📦 Installing Flutter SDK to $FLUTTER_DIR..."

# Remove any existing broken installation
rm -rf "$FLUTTER_DIR"

# Clone Flutter from Git (this is the official way)
echo "⬇️ Cloning Flutter SDK from Git..."
git clone https://github.com/flutter/flutter.git -b stable "$FLUTTER_DIR"

# Add Flutter to PATH
echo "🔗 Adding Flutter to PATH..."
export PATH="$PATH:$FLUTTER_DIR/bin"

# Configure Flutter for web development
echo "⚙️ Configuring Flutter..."
flutter config --enable-web --no-analytics

# Pre-cache web artifacts
echo "📱 Pre-caching web artifacts (this may take a moment)..."
flutter precache --web

# Run Flutter doctor
echo "🩺 Running Flutter doctor..."
flutter doctor -v

echo "✅ Flutter installation complete!"
echo "🎉 You can now run Flutter commands!"