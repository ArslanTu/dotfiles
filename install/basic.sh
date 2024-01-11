#!/bin/bash

packages=("vim" "zsh" "git" "curl")

sudo apt-get update
for package in "${packages[@]}"; do
    sudo apt install -y "${package}"
done   

echo "successfully installed basic packages"
