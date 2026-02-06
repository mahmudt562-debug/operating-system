#!/bin/bash

# Task 4: Rename all .txt files by adding OLD_ prefix

for file in *.txt; do
  if [[ -f "$file" ]]; then
    mv "$file" "OLD_$file"
  fi
done

echo "Renaming done."
