#!/bin/bash

safe_remove ~/.vim
safe_remove ~/.vimrc

mkdir -p ${HOME}/.vim/autoload ${HOME}/.vim/backup ${HOME}/.vim/colors ${HOME}/.vim/plugged ${HOME}/.vim/bundle

ln -s ${BASEDIR}/home/.vimrc ${HOME}/.vimrc

# install Vundle
vundle_target_dir=${HOME}/.vim/bundle/Vundle.vim
git clone "${GITHUB_PROXY}https://github.com/VundleVim/Vundle.vim.git" $vundle_target_dir

# install catppuccin colors
git clone ${GITHUB_PROXY}https://github.com/catppuccin/vim.git ${INSTALL_TMP}/catppuccin_vim
cp ${INSTALL_TMP}/catppuccin_vim/colors/* ${HOME}/.vim/colors/.

# init plugins
vim +PluginInstall +qall

cp ${INSTALL_TMP}/catppuccin_vim/autoload/airline/themes/* ${HOME}/.vim/bundle/vim-airline-themes/autoload/airline/themes/.
