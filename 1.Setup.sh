#!/bin/bash

echo ###########################
echo ##### Manjaro Setup ######
echo ##########################

AUTHOR="Yuji Tanaka"

# Removing Bloatware Apps, it's System Config Files and it's Dependencies
sudo pacman -Rns gtkhash hplip xfce4-sensors-plugin stoken xfburn steam-manjaro hexchat pidgin thunderbird audacious v4l-utils hp-uiscan hwloc timeshift yelp

# System Update and Upgrade
sudo pacman -Syyu

# System Clean Up
sudo paccache -ruk0
sudo pacman -Scc

# End of Script

# Display Installation Complete Message
echo "All good now :)" 
echo "Please, restart the computer, backup your system using Timeshift (if you installed it) and then run the 2nd Script to install all your Apps."