#!/bin/bash

# Put this in home directory

# Initial packages
sudo apt update
sudo apt upgrade -y
sudo apt install -y gcc
sudo apt install -y vlc
sudo apt install -y snapd
sudo apt install -y remmina
sudo snap install thunderbird
sudo snap install spotify
sudo apt install -y curl

# Get git
sudo apt install -y git
git config --global user.name "Zachary Zalass"
git config --global user.name "zachzalass@gmail.com"
mkdir ~/Source
git clone https://github.com/trolledbypro/ConfigFiles.git ~/Source/ConfigFiles
git checkout -b Linux
git pull
sudo cp -a ~/Source/ConfigFiles/. ~/

# Install Visual Studio Code and MS Teams
#sudo apt install -y software-properties-common apt-transport-https
#wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add –
#sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
#sudo apt update
#sudo apt install code
#sudo apt install -y teams
sudo snap install teams
sudo snap install --classic code
sudo snap refresh

# Install oh-my-posh
sudo apt install -y --reinstall python3-apt
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
test -d ~/.linuxbrew && eval "$(~/.linuxbrew/bin/brew shellenv)"
test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
brew install jandedobbeleer/oh-my-posh/oh-my-posh
brew update && brew upgrade oh-my-posh
exec bash

# Install Python 3.11
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update 
sudo apt install -y python3.11-full
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.10 1
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.11 2
sudo update-alternatives --config python3

chmod u+x ~/Scripts/mount_drives.sh
source ~/Scripts/mount_drives.sh
