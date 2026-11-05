#!/usr/bin/env bash

set -euo pipefail

case "$ENABLE_QEMU" in
    true|false)
        echo "::notice::Enable QEMU is valid!"
        ;;
    *)
        echo "::error::Input is Invalid!!!!"
        echo "::warning::enable-qemu must be true or false."
        exit 1
        ;;
esac

if [[ -z "$BUILDER_NAME" ]];then
    echo "::error::builder-name cannot be empty!!"
    exit 1
fi
