#!/bin/bash

safe_remove ~/.vim
safe_remove ~/.vimrc

if [ -d "${BASEDIR}/home/.vim" ]; then
    rm -rf ${BASEDIR}/home/.vim
fi
mkdir -p ${BASEDIR}/home/.vim/autoload ${BASEDIR}/home/.vim/backup ${BASEDIR}/home/.vim/colors ${BASEDIR}/home/.vim/plugged ${BASEDIR}/home/.vim/bundle

ln -s ${BASEDIR}/home/.vimrc ~/.vimrc
ln -s ${BASEDIR}/home/.vim ~/.vim

# install Vundle
vundle_target_dir=${BASEDIR}/home/.vim/bundle/Vundle.vim
git clone "${GITHUB_PROXY}https://github.com/VundleVim/Vundle.vim.git" $vundle_target_dir

# install catppuccin colors
git clone ${GITHUB_PROXY}https://github.com/catppuccin/vim.git ${INSTALL_TMP}/catppuccin_vim
cp ${INSTALL_TMP}/catppuccin_vim/colors/* ${BASEDIR}/home/.vim/colors/.

# init plugins
vim +PluginInstall +qall

cp ${INSTALL_TMP}/catppuccin_vim/autoload/airline/themes/* ${BASEDIR}/home/.vim/bundle/vim-airline-themes/autoload/airline/themes/.