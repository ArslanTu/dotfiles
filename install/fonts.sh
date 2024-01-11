#!/bin/bash

# install prepared fonts
fonts_dir=/usr/local/share/fonts/ttf/dotfiles
if [ -d ${fonts_dir} ]; then
    sudo rm -rf ${fonts_dir}
else
    true
fi
sudo mkdir -p ${fonts_dir}
sudo cp -r ${HOME}/Downloads/mint/fonts/* ${fonts_dir}/.
sudo chmod -R 755 ${fonts_dir}

# install powerline fonts from github
git clone ${GITHUB_POXY}https://github.com/powerline/fonts.git ${INSTALL_TMP}/powerline_fonts
sh ${INSTALL_TMP}/powerline_fonts/install.sh

# reload fonts
fc-cache -f
