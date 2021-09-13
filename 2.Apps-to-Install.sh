#!/bin/bash

echo ###################
echo # Apps to Install #
echo ###################

AUTHOR="Yuji Tanaka"

# System Update and Upgrade
sudo pacman -Syyu

# Manjaro Apps
sudo pacman -S yay baobab hardinfo virtualbox neofetch net-tools flameshot qbittorrent keepassxc brave-browser meld bleachbit libreoffice-fresh
## Manjaro Apps that will not be installed
### intellij-idea-community-edition

# AUR Apps using Yay:
yay -S google-chrome autokey-gtk ocs-url ttf-ms-fonts cryptomator visual-studio-code-bin xampp dropbox
## AUR Apps using Yay that will not be installed
### amazon-corretto-11 jdk11-openj9-bin 11.0.12b7_openj9_0.27.0-3 javafx-scenebuilder java-openjfx-ea-bin

# AppImage: 
## GitHub-Desktop

# Flatpak Update
flatpak update -y

# Flatpak Apps
## AnyDesk
flatpak install flathub com.anydesk.Anydesk -y
## Tor Browser
flatpak install flathub com.github.micahflee.torbrowser-launcher -y

# Flatpak Clean Up
flatpak uninstall --delete-data -y
flatpak uninstall --unused -y

# Some Other Settings
## Permanently enable Do Not Disturb (No Notifications)
gsettings set org.gnome.desktop.notifications show-banners false
## Permanently disable Bluetooth
sudo systemctl disable bluetooth.service
## Enable Hidden Startup Programs
sudo sed -i 's/NoDisplay=true/NoDisplay=false/g' /etc/xdg/autostart/*.desktop

# Finishing Things Up
## System Clean Up
sudo paccache -ruk0
sudo pacman -Scc

# End of Script

# Display Installation Complete Message
echo "All done :)" 
echo "Please, restart the computer, clean up your system using BleachBit (if you want) and then restart the computer again."