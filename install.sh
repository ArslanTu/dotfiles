#!/bin/bash

set -e

INSTALL_TMP=/tmp/DotFiles
mkdir ${INSTALL_TMP}

cleanup() {
    rm -rf ${INSTALL_TMP}
}

trap cleanup EXIT

BASEDIR=$(dirname "$(readlink -f "$0")")

# check whether the material exist
if [ ! -d ${HOME}/Downloads/Mint ]; then
    echo "The ${HOME}/Downloads/Mint directory does not exist. Exiting..."
    exit 1
fi

source ${BASEDIR}/utils.sh

# install basic package
source ${BASEDIR}/install/basic.sh
# install fonts
source ${BASEDIR}/install/fonts.sh
# install normal dependencies
source ${BASEDIR}/install/normal.sh
source ${BASEDIR}/install/theme.sh
