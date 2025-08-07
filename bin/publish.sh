#!/usr/bin/env bash

set -euo pipefail

# Check if PYPI_TOKEN environment variable is set
if [ -z "$PYPI_TOKEN" ]; then
  echo "Error: PYPI_TOKEN environment variable is not set"
  echo "Please set it with your PyPI token:"
  echo "  export PYPI_TOKEN=your_token_here"
  echo "Then run this script again."
  exit 1
fi

# Clean up previous builds
echo "Cleaning up dist directory..."
rm -rf dist

# Build
echo "Building the package..."
uv build

# Publish
echo "Publishing to PyPI..."
UV_PUBLISH_TOKEN=$PYPI_TOKEN uv publish

echo "Successfully published!"
