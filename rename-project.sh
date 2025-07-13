#!/bin/bash

# Usage: ./replace_template.sh ReplacementValue

OLD_NAME=
NEW_NAME=__GODOT_TEMPLATE__

OPTIONS=$(getopt -o '' --long 'help,old-name:,new-name:' -n "$0" -- "$@")
if [ $? -ne 0 ]; then
  exit 1
fi

eval set -- "${OPTIONS}"

help() {
  cat <<-EOF
  Description: Helper script for renaming godot project
  Usage:
    ${0} [options]

  Options:
    --help         Displays this dialog
    --old-name     The old project name to replace (default: __GODOT_TEMPLATE__)
    --new-name     The new project name to use (required)
  Example:
    ${0} --old-name old_name --new-name MyNewProject
EOF
}

while true; do
  case "$1" in
    --help)
      help
      exit 0
      ;;
    --old-name)
      OLD_NAME=$2
      shift 2
      ;;
    --new-name)
      NEW_NAME=$2
      shift 2
      ;;
    --)
      shift
      break
      ;;
    *)
      break
      ;;
  esac
done

if [[ -z "${OLD_NAME}" ]]; then
  help
  exit 1
fi

echo "replacing ${OLD_NAME} with ${NEW_NAME}"

# Use sed to replace all instances of OLD_NAME with the NEW_NAME value
sed -i "s/${OLD_NAME}/${NEW_NAME}/g" project.godot
