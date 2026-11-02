#!/usr/bin/env bash

set -euo pipefail

echo "Collecting Python information..."

python_version=$(python --version)
python_executable=$(command -v python)

echo "version=$python_version" >> "$GITHUB_OUTPUT"
echo "executable=$python_executable" >> "$GITHUB_OUTPUT"

echo "Python Version: $python_version"
echo "Python Executable: $python_executable"