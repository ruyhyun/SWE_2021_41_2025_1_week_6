#!/bin/bash

FILES_DIR="./files"

for filepath in "$FILES_DIR"/*; do
    filename=$(basename "$filepath")
    first_char="${filename:0:1}"
    lower_char=$(echo "$first_char" | tr '[:upper:]' '[:lower:]')

    if [[ "$lower_char" =~ [a-z] ]]; then
        mv "$filepath" "./$lower_char/"
    fi
done
