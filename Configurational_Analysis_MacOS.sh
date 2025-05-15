#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR/exe"

echo "Checking and installing required Python modules..."
python3 -m pip install --quiet --no-warn-script-location -r requirements.txt
if [ $? -ne 0 ]; then
  echo "Dependency install failed. Check Python installation."
  echo "Press any key to continue..."
  read -n 1 -s
  exit 1
fi
echo "All required modules installed."

echo ""

while true; do
  read -p "> Enter command (i.e. dict (Configurational Dictionaries), config (Configurational Analysis), vis (Configuration Visualiser) or exit): " command

  case "$command" in
    [Vv][Ii][Ss])
      python3 Visualiser.py
      ;;
    [Dd][Ii][Cc][Tt])
      python3 Generalised_Clapp_v2.py
      ;;
    [Cc][Oo][Nn][Ff][Ii][Gg])
      python3 Histograms_v2_2.py
      ;;
    [Ee][Xx][Ii][Tt])
      exit 0
      ;;
    *)
      echo "Invalid command: $command"
      ;;
  esac
done