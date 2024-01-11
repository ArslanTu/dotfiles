#!/bin/bash

safe_remove ${HOME}/.zshrc
safe_remove ${HOME}/.oh-my-zsh
safe_remove ${HOME}/.p10k.zsh

install_oh_my_zsh="${INSTALL_TMP}/install_oh_my_zsh.sh"
curl "${GITHUB_PROXY}https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh" -o ${install_oh_my_zsh}
REMOTE="${GITHUB_PROXY}https://github.com/ohmyzsh/ohmyzsh.git" RUNZSH=no sh ${install_oh_my_zsh}

# install plugins
git clone "${GITHUB_PROXY}https://github.com/zsh-users/zsh-autosuggestions.git" ${HOME}/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone "${GITHUB_PROXY}https://github.com/zsh-users/zsh-syntax-highlighting.git" ${HOME}/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone "${GITHUB_PROXY}https://github.com/sobolevn/wakatime-zsh-plugin.git" ${HOME}/.oh-my-zsh/custom/plugins/wakatime
wget "https://raw.githubusercontent.com/catppuccin/zsh-syntax-highlighting/main/themes/catppuccin_macchiato-zsh-syntax-highlighting.zsh" -O ${HOME}/.oh-my-zsh/catppuccin_macchiato-zsh-syntax-highlighting.zsh
sudo apt install -y thefuck
# install powerlevel10k
git clone --depth=1 ${GITHUB_PROXY}https://github.com/romkatv/powerlevel10k.git ${HOME}/.oh-my-zsh/custom/themes/powerlevel10k

safe_remove ${HOME}/.zshrc
ln -s ${BASEDIR}/home/.zshrc ${HOME}/.zshrc
ln -s ${BASEDIR}/home/.p10k.zsh ${HOME}/.p10k.zsh
