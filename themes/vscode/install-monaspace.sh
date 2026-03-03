#!/bin/bash

# USGC Themes - Monaspace Font Installation Script
# This script downloads and installs the Monaspace font family

set -e

echo "USGC Themes - Installing Monaspace Fonts"
echo "=========================================="

# Detect latest release version
echo "Detecting latest Monaspace release..."
LATEST_TAG=$(curl -sI "https://github.com/githubnext/monaspace/releases/latest" | grep -i "^location:" | sed 's|.*/tag/||;s/\r//')

if [ -z "$LATEST_TAG" ]; then
    echo "ERROR: Could not detect latest release. Check your internet connection."
    exit 1
fi

echo "Latest release: $LATEST_TAG"

# Create temporary directory
TEMP_DIR=$(mktemp -d)
trap 'rm -rf "$TEMP_DIR"' EXIT

DOWNLOAD_URL="https://github.com/githubnext/monaspace/releases/download/${LATEST_TAG}/monaspace-static-${LATEST_TAG}.zip"

echo "Downloading from: $DOWNLOAD_URL"
curl -L -o "$TEMP_DIR/monaspace.zip" "$DOWNLOAD_URL"

# Verify download
FILE_SIZE=$(wc -c < "$TEMP_DIR/monaspace.zip")
if [ "$FILE_SIZE" -lt 1000 ]; then
    echo "ERROR: Download failed (file too small: ${FILE_SIZE} bytes)."
    echo "The asset name may have changed. Visit https://github.com/githubnext/monaspace/releases to download manually."
    exit 1
fi

echo "Extracting fonts..."
unzip -q "$TEMP_DIR/monaspace.zip" -d "$TEMP_DIR"

# Install fonts by platform
if [[ "$OSTYPE" == "darwin"* ]]; then
    echo "Installing fonts on macOS..."
    find "$TEMP_DIR" -name "*.otf" -exec cp {} ~/Library/Fonts/ \;
    echo "Monaspace fonts installed to ~/Library/Fonts/"
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    echo "Installing fonts on Linux..."
    mkdir -p ~/.local/share/fonts
    find "$TEMP_DIR" -name "*.otf" -exec cp {} ~/.local/share/fonts/ \;
    fc-cache -f -v
    echo "Monaspace fonts installed to ~/.local/share/fonts/"
else
    echo "Unsupported OS. Please install fonts manually."
    echo "Fonts are located in: $TEMP_DIR"
    trap - EXIT  # Don't clean up so user can access fonts
    exit 1
fi

echo ""
echo "Done! Next steps:"
echo "1. Restart VS Code"
echo "2. Copy settings from recommended-settings.json to your VS Code settings"
echo "3. Enjoy USGC POLYIMIDE with Monaspace fonts!"
