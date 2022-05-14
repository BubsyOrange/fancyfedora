#!/bin/bash
#
# fancyfedora.sh Author: Bubsy Orange
# git clone https://github.com/BubsyOrange/fancyfedora 
# Usage: sudo ./fancyfedora.sh
#
# Standard Disclaimer: Author assumes no liability for any damage

#Welcome Message
echo " Bubsy Orange's 
███████╗░█████╗░███╗░░██╗░█████╗░██╗░░░██╗  ███████╗███████╗██████╗░░█████╗░██████╗░░█████╗░
██╔════╝██╔══██╗████╗░██║██╔══██╗╚██╗░██╔╝  ██╔════╝██╔════╝██╔══██╗██╔══██╗██╔══██╗██╔══██╗
█████╗░░███████║██╔██╗██║██║░░╚═╝░╚████╔╝░  █████╗░░█████╗░░██║░░██║██║░░██║██████╔╝███████║
██╔══╝░░██╔══██║██║╚████║██║░░██╗░░╚██╔╝░░  ██╔══╝░░██╔══╝░░██║░░██║██║░░██║██╔══██╗██╔══██║
██║░░░░░██║░░██║██║░╚███║╚█████╔╝░░░██║░░░  ██║░░░░░███████╗██████╔╝╚█████╔╝██║░░██║██║░░██║
╚═╝░░░░░╚═╝░░╚═╝╚═╝░░╚══╝░╚════╝░░░░╚═╝░░░  ╚═╝░░░░░╚══════╝╚═════╝░░╚════╝░╚═╝░░╚═╝╚═╝░░╚═╝
                                                                                    ver.0.1"


# Update System
sudo dnf update -y

# Install RPM Fusion Free & Non-Free
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y

# Appstream metadata for RPM Fusion
sudo dnf groupupdate core -y

# Adds FlatHub Repo
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Install Media Codecs
sudo dnf groupupdate multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin -y

#Final Message
echo "
███████╗░█████╗░███╗░░██╗░█████╗░██╗░░░██╗  ███████╗███████╗██████╗░░█████╗░██████╗░░█████╗░
██╔════╝██╔══██╗████╗░██║██╔══██╗╚██╗░██╔╝  ██╔════╝██╔════╝██╔══██╗██╔══██╗██╔══██╗██╔══██╗
█████╗░░███████║██╔██╗██║██║░░╚═╝░╚████╔╝░  █████╗░░█████╗░░██║░░██║██║░░██║██████╔╝███████║
██╔══╝░░██╔══██║██║╚████║██║░░██╗░░╚██╔╝░░  ██╔══╝░░██╔══╝░░██║░░██║██║░░██║██╔══██╗██╔══██║
██║░░░░░██║░░██║██║░╚███║╚█████╔╝░░░██║░░░  ██║░░░░░███████╗██████╔╝╚█████╔╝██║░░██║██║░░██║
╚═╝░░░░░╚═╝░░╚═╝╚═╝░░╚══╝░╚════╝░░░░╚═╝░░░  ╚═╝░░░░░╚══════╝╚═════╝░░╚════╝░╚═╝░░╚═╝╚═╝░░╚═╝
Enjoy your new system!"


