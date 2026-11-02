#!/usr/bin/env bash

set -euo pipefail

echo "Installing Python Dependencies..."

python -m pip install --upgrade pip
  
python -m pip install -r "$REQUIREMENTS_FILE"

echo "installed=true" >> "$GITHUB_OUTPUT"

echo "Dependencies installed successfully!"


