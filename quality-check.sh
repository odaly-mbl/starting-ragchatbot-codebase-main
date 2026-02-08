#!/bin/bash

# Frontend Code Quality Check Script
# This script runs ESLint and Prettier checks on the frontend code

set -e

echo "🔍 Running Frontend Code Quality Checks..."
echo ""

# Check if node_modules exists
if [ ! -d "node_modules" ]; then
    echo "📦 Installing dependencies..."
    npm install
    echo ""
fi

# Run ESLint
echo "🔧 Running ESLint..."
if npm run lint; then
    echo "✅ ESLint passed!"
else
    echo "❌ ESLint found issues. Run 'npm run lint:fix' to auto-fix."
    exit 1
fi
echo ""

# Run Prettier check
echo "💅 Checking code formatting..."
if npm run format:check; then
    echo "✅ Code formatting is correct!"
else
    echo "❌ Code formatting issues found. Run 'npm run format' to auto-fix."
    exit 1
fi
echo ""

echo "✨ All quality checks passed!"
