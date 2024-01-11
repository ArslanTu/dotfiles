#!/bin/bash

safe_remove(){
    target=$1
    if [ -L "$target" ]; then
        rm "$target"
        echo "Deleted symlink: $target"
    elif [ -e "$target" ]; then
        suffix="$(date +%Y%m%d)$((RANDOM %10))"
        mv "$target" "$target.bak.$suffix"
        echo "Renamed $target to $target.bak.$suffix"
    else
        true
    fi
}