#!/bin/bash

# Usage: ./replace_template.sh ReplacementValue

REPLACEMENT="$1"

if [[ -z "${REPLACEMENT}" ]]; then
  echo "Usage: $0 <replacement_value>"
  exit 1
fi

# Use sed to replace all instances of __GODOT_TEMPLATE__ with the replacement value
sed -i "s/__GODOT_TEMPLATE__/${REPLACEMENT}/g" project.godot
