#!/usr/bin/env bash

set -euo pipefail

if [[ "$INSTALL_DEPENDENCIES" == "false" ]];then
  echo "installed=false" >> "$GITHUB_OUTPUT"
  echo "Skipping Dependency Installation!"
  exit 0

fi

python -m pip install --upgrade pip
  
python -m pip install -r "$REQUIREMENTS_FILE"

echo "installed=true" >> "$GITHUB_OUTPUT"

echo "Dependencies installed successfully!"


