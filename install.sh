#!/bin/bash
#
# fancyfedora.sh Author: Bubsy Orange
# git clone https://github.com/BubsyOrange/fancyfedora 
# Usage: sudo ./install.sh
#
# Standard Disclaimer: Author assumes no liability for any damage

# Update System
sudo dnf update -y

# Install RPM Fusion Free & Non-Free
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y

#Update System
sudo dnf update -y

# Appstream metadata for RPM Fusion
sudo dnf groupupdate core -y

# Update System
sudo dnf update -y

# Adds FlatHub Repo
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Update System
sudo dnf update -y

# Install Media Codecs
sudo dnf groupupdate multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin -y



