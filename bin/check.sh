#!/usr/bin/env bash

# Runs linting and formatting checks for the codebase using ruff

set -euo pipefail

echo "Running linting and formatting checks..."

# Run ruff linter
echo "Running ruff linter..."
uv run ruff check --fix

# Run ruff formatter
echo "Running ruff formatter..."
uv run ruff format

echo "All checks completed successfully!"
