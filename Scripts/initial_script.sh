#!/bin/bash

# Initial packages
sudo apt update
sudo apt upgrade -y
sudo apt install -y git
sudo apt install -y gcc
sudo apt install -y vlc
sudo apt install -y snapd
sudo apt install -y remminna
sudo snap install thunderbird
sudo snap install spotify

# Install Visual Studio Code and MS Teams
sudo apt install software-properties-common apt-transport-https
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add –
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update
sudo apt install code
sudo apt install -y teams


# Install Python
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update 
sudo apt install python3.11-full
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.10 1
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.11 2
sudo update-alternatives --config python3

source mount_drives.sh