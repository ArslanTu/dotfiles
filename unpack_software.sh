#!/bin/bash

# check whether the material exist
if [ ! -d ${HOME}/Downloads/Mint ]; then
    echo "The ${HOME}/Downloads/Mint directory does not exist. Exiting..."
    exit 1
fi

cp -r ${HOME}/Downloads/Mint/software ${HOME}/.


find "${HOME}/software" -type f -name "*.desktop" -print0 | while IFS= read -r -d $'\0' file; do
    filename=$(basename "$file")

    ln -s "${file}" "${HOME}/.local/share/applications/${filename}"
done