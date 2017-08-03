#!/bin/bash

echo "Source: $SOURCE_DIR"
echo "Target: $TARGET_DIR"


for tmpFile in $(find "$SOURCE_DIR"); do
    mtimeHuman=$(stat --format "%y" "$tmpFile" | sed 's/\.000000000//g')
    mtimeTs=$(stat --format "%Y" "$tmpFile")

    echo "$tmpFile: $mtimeHuman ($mtimeTs)"

    if [[ $mtimeTs -ge $copyUpToTs ]]; then
        echo "copy"
    fi

done
