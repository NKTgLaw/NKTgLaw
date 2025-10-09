#!/bin/bash

# 🛠️ NKTgLaw Build Script
# This script compiles the core library, runs lint checks, and validates components.

set -e  # Exit immediately on error

echo "🔧 Starting NKTgLaw build process..."

# Step 1: Prepare build directory
echo "📁 Creating build directory..."
mkdir -p build
cd build

# Step 2: Run CMake and compile core
echo "⚙️ Running CMake..."
cmake ..

echo "🧱 Building project..."
make

cd ..

# Step 3: Run lint checks
if [ -f "tools/lint.sh" ]; then
  echo "🧹 Running lint script..."
  bash tools/lint.sh
else
  echo "⚠️ Lint script not found. Skipping lint step."
fi

# Step 4: Validate Python server (optional)
if [ -f "server/app.py" ]; then
  echo "🐍 Checking Python server syntax..."
  python3 -m py_compile server/app.py
fi

# Step 5: Validate OpenAPI spec (optional)
if [ -f "api/openapi.yaml" ]; then
  echo "📄 Validating OpenAPI spec..."
  if command -v npx &> /dev/null; then
    npx @redocly/cli lint api/openapi.yaml
  else
    echo "⚠️ npx not found. Skipping OpenAPI lint."
  fi
fi

echo "✅ Build completed successfully."
