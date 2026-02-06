#!/bin/bash

# Usage: ./task1_bigfile.sh <filename>
# This script checks if the provided file exceeds 1 MB in size.

INPUT_FILE="$1"
MAX_SIZE=1048576  # 1 MB = 1048576 bytes

# Validate input
if [ -z "$INPUT_FILE" ]; then
  echo "Usage: $0 <filename>"
  exit 1
fi

# Check if the file exists
if [ ! -f "$INPUT_FILE" ]; then
  echo "Error: File '$INPUT_FILE' does not exist."
  exit 1
fi

# Get the actual file size in bytes
ACTUAL_SIZE=$(stat -c %s "$INPUT_FILE")

# Compare with the limit
if [ "$ACTUAL_SIZE" -gt "$MAX_SIZE" ]; then
  echo "Warning: '$INPUT_FILE' exceeds 1 MB."
else
  echo "Success: '$INPUT_FILE' is within the size limit."
fi
