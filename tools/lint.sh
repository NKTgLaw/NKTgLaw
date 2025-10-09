#!/bin/bash

# 🧹 NKTgLaw Lint Script
# This script runs linting checks for C++, Python, Rust, Go, and shell scripts.

echo "🔍 Starting lint checks..."

### C++ Linting
if command -v clang-format &> /dev/null; then
  echo "🧾 Checking C++ formatting..."
  find core/ -name "*.hpp" -o -name "*.cpp" | while read file; do
    clang-format --dry-run --Werror "$file"
  done
else
  echo "⚠️ clang-format not found. Skipping C++ formatting."
fi

### Python Linting
if command -v flake8 &> /dev/null; then
  echo "🐍 Checking Python code with flake8..."
  flake8 server/ clients/python/
else
  echo "⚠️ flake8 not found. Skipping Python linting."
fi

### Rust Linting
if command -v cargo &> /dev/null; then
  echo "🦀 Checking Rust code with cargo clippy..."
  cd core/rust/ && cargo clippy --all-targets --all-features -- -D warnings
  cd - > /dev/null
else
  echo "⚠️ cargo not found. Skipping Rust linting."
fi

### Go Linting
if command -v golangci-lint &> /dev/null; then
  echo "🐹 Checking Go code with golangci-lint..."
  golangci-lint run core/go/
else
  echo "⚠️ golangci-lint not found. Skipping Go linting."
fi

### Shell Script Linting
if command -v shellcheck &> /dev/null; then
  echo "📜 Checking shell scripts with shellcheck..."
  shellcheck tools/*.sh
else
  echo "⚠️ shellcheck not found. Skipping shell script linting."
fi

echo "✅ Lint checks completed."

