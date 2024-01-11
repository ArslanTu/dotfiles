#!/bin/bash

# change default file manager
# change it after install
sudo apt install nautilus nautilus-admin nautilus-extension-gnome-terminal -y

# install theme, fonts and icons
unzip ${HOME}/Downloads/Mint/theme/themes.zip -d ${HOME}/
mv ${HOME}/themes ${HOME}/.themes

unzip ${HOME}/Downloads/Mint/theme/icons.zip -d ${HOME}/.local/share/
unzip ${HOME}/Downloads/Mint/theme/start-menu-icon.zip -d ${HOME}/.local/share/icons/

unzip ${HOME}/Downloads/Mint/theme/cursors.zip -d ${HOME}/
mv -v ${HOME}/cursors ${HOME}/.icons


# apply cinnamon applet config
unzip ${HOME}/Downloads/Mint/theme/cinnamon-applet-config.zip -d ${HOME}/Downloads/Mint/theme/
rsync -av ${HOME}/Downloads/Mint/theme/cinnamon-applet-config/.cinnamon ${HOME}/
rsync -av ${HOME}/Downloads/Mint/theme/cinnamon-applet-config/.local ${HOME}/
rm -rf ${HOME}/Downloads/Mint/theme/cinnamon-applet-config


# apply the cinnamon desktop configuration
unzip ${HOME}/Downloads/Mint/theme/cinnamon-config.zip -d ${HOME}/Downloads/Mint/theme/
dconf load /org/cinnamon/ < ${HOME}/Downloads/Mint/theme/cinnamon-config/cinnamon-catppcn.conf
# change start menu icon with "import"


# apply theme for terminal
curl -L https://raw.githubusercontent.com/catppuccin/gnome-terminal/v0.2.0/install.py | python3 -


# install plank dock
sudo apt install -y plank
unzip ${HOME}/Downloads/Mint/theme/plank-theme-config.zip -d ${HOME}/Downloads/Mint/theme/
rsync -av ${HOME}/Downloads/Mint/theme/plank-theme-config/.config ${HOME}/
rsync -av ${HOME}/Downloads/Mint/theme/plank-theme-config/.local ${HOME}/
rm -rf ${HOME}/Downloads/Mint/theme/plank-theme-config


# copy image materials
cp -r ${HOME}/Downloads/Mint/wallpapers ${HOME}/Pictures/.
cp -r ${HOME}/Downloads/Mint/avatar ${HOME}/Pictures/.
