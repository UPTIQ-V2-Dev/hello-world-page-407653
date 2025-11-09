#!/bin/bash

# Setup script to fix pnpm EACCES issue
# Run this script as administrator to properly install pnpm

echo "Setting up pnpm for the frontend project..."

# Remove any existing problematic pnpm files
rm -f /usr/local/bin/pnpm
rm -f ./pnpm

# Method 1: Install pnpm using corepack (recommended for Node.js 16.13+)
echo "Attempting to install pnpm using corepack..."
if command -v corepack >/dev/null 2>&1; then
    corepack enable
    corepack prepare pnpm@latest --activate
    echo "✅ pnpm installed via corepack"
else
    echo "❌ corepack not available"
fi

# Method 2: Install pnpm using npm
if ! command -v pnpm >/dev/null 2>&1; then
    echo "Attempting to install pnpm using npm..."
    npm install -g pnpm
    echo "✅ pnpm installed via npm"
fi

# Method 3: Install using the official installer
if ! command -v pnpm >/dev/null 2>&1; then
    echo "Attempting to install pnpm using official installer..."
    curl -fsSL https://get.pnpm.io/install.sh | sh
    source ~/.bashrc
    echo "✅ pnpm installed via official installer"
fi

# Verify pnpm installation
if command -v pnpm >/dev/null 2>&1; then
    echo "✅ pnpm is now available:"
    pnpm --version
    
    # Install dependencies
    echo "Installing project dependencies..."
    pnpm install
    
    echo "✅ Setup complete! You can now use pnpm commands."
else
    echo "❌ Failed to install pnpm. Please install it manually:"
    echo "   Option 1: npm install -g pnpm"
    echo "   Option 2: curl -fsSL https://get.pnpm.io/install.sh | sh"
    echo "   Option 3: Use npm instead of pnpm for this project"
fi