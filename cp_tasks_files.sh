#!/usr/bin/env bash

# Exit immediately if a command exits with a non-zero status
set -e

# --- CONFIGURATION ---
# Check if an argument was passed
if [[ -z "$1" ]]; then
    echo "Error: Missing source file argument." >&2
    echo "Usage: $0 <source_file>" >&2
    exit 1
fi

SOURCE_FILE="$1"
ROLES_DIR="roles"
# ---------------------

# 1. Validation checks
if [[ ! -f "$SOURCE_FILE" ]]; then
    echo "Error: Source file '$SOURCE_FILE' does not exist." >&2
    exit 1
fi

if [[ ! -d "$ROLES_DIR" ]]; then
    echo "Error: Roles directory '$ROLES_DIR' not found." >&2
    exit 1
fi

# 2. Confirmation prompt for 'main.yml' or strings containing '*'
if [[ "$SOURCE_FILE" == "main.yml" || "$SOURCE_FILE" == *'*'* ]]; then
    echo "⚠️  WARNING: You specified '$SOURCE_FILE'."
    echo "This may overwrite critical role files or distribute unexpected matching files."
    read -p "Are you absolutely sure you want to proceed? (y/N): " response
    
    # Convert response to lowercase and check
    if [[ ! "${response,,}" =~ ^(yes|y)$ ]]; then
        echo "Operation cancelled by user."
        exit 0
    fi
fi

echo "Starting deployment of '$SOURCE_FILE' to all tasks folders..."

# 3. Find all 'tasks' directories inside the roles directory and copy the file
find "$ROLES_DIR" -type d -name "tasks" | while read -r tasks_dir; do
    echo "Copying to: $tasks_dir"
    # Double-quoting allows wildcards to expand cleanly if intended
#    cp "$SOURCE_FILE" "$tasks_dir/"
    cp "$SOURCE_FILE" "$tasks_dir/"
done

echo "Successfully copied '$SOURCE_FILE' to all role tasks directories!"

