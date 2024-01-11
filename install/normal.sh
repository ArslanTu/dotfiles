#!/bin/bash

for file in ${BASEDIR}/install/normal/*.sh; do
    if [ -f "${file}" ]; then
        source "${file}"
        echo "Sourced file: ${file}"
    fi
done

packages=("flameshot" "obs-studio" "vlc")

sudo apt-get update
for package in "${packages[@]}"; do
    sudo apt install -y "${package}"
done   

echo "successfully installed normal packages"
