#!/bin/bash

# Task 2: Top Memory Hogs - Bash Version

echo "Top 5 memory-consuming processes:"
echo "----------------------------------"
ps -eo pid,comm,%mem --sort=-%mem | head -n 6
