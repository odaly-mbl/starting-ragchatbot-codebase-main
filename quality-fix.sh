#!/bin/bash

# Frontend Code Quality Fix Script
# This script automatically fixes linting and formatting issues

set -e

echo "🔧 Running Frontend Code Quality Fixes..."
echo ""

# Check if node_modules exists
if [ ! -d "node_modules" ]; then
    echo "📦 Installing dependencies..."
    npm install
    echo ""
fi

# Run ESLint with auto-fix
echo "🔧 Running ESLint with auto-fix..."
npm run lint:fix
echo "✅ ESLint fixes applied!"
echo ""

# Run Prettier with auto-fix
echo "💅 Running Prettier with auto-fix..."
npm run format
echo "✅ Code formatted!"
echo ""

echo "✨ All quality fixes applied!"
