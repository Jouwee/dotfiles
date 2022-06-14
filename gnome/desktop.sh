#!/bin/sh

# Nordic theme
mkdir ~/.themes
wget https://github.com/EliverLara/Nordic/releases/download/v2.1.0/Nordic-darker-v40.tar.xz -O ~/.themes/nordic.tar.xz
cd ~/.themes/
tar -xJf ./nordic.tar.xz

gsettings set org.gnome.desktop.interface gtk-theme Nordic-darker
gsettings set org.gnome.desktop.wm.preferences theme Nordic-darker
