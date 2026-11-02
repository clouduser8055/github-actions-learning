#!/usr/bin/env bash

set -euo pipefail

echo "Starting input validation...."

if [[ -z "$PYTHON_VERSION" ]];then
  echo "::error::Python version cannot be empty!"
  exit 1
fi

if [[ ! "$PYTHON_VERSION" =~ ^[0-9]+\.[0-9]+(\.[0-9]+)?$ ]];then
  echo "::error::Invalid python version format!"
  exit 1
fi

case "$INSTALL_DEPENDENCIES" in 
  true|false)
    echo "::notice::Dependency installation setting is valid."
    ;;

  *)
    echo "::error::Use true or false for install-dependencies."
    exit 1
    ;;
esac

if [[ "$INSTALL_DEPENDENCIES" == "true" ]]; then
    if [[ -z "$REQUIREMENTS_FILE" ]]; then
      echo "::error::Requirements file cannot be empty!"
      exit 1
    fi

    if [[ ! -f "$REQUIREMENTS_FILE" ]]; then
      echo "::error::Requirements file not found!"
      exit 1
    fi
fi

echo "ALL INPUTS VALIDATED SUCCESSFULLY!"
