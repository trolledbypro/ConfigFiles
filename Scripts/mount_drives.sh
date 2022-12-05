#!/bin/bash

# Get OneDrive repo
sudo apt remove -y onedrive
sudo add-apt-repository --remove ppa:yann1ck/onedrive

# Install the packages
rm -rf /var/lib/dpkg/lock-frontend
rm -rf /var/lib/dpkg/lock
sudp apt update
sudo apt upgrade -y
sudo apt dist-upgrade -y
sudo apt autoremove -y
sudo apt autoclean -y
sudo apt install -y cifs-utils
sudo apt install -y sshfs

# Mount SAE drive
sudo mkdir /mnt/sae
sudo mount.cifs //10.108.160.36/sae /mnt/sae -o user=vpit

# Mount SAE Archive drive
sudo mkdir /mnt/saearchive
sudo mount.cifs //10.108.160.36/saearchive /mnt/saearchive -o user=vpit
Mount SAE drive
sudo mkdir /mnt/sae
sudo mount.cifs //10.108.160.36/sae /mnt/sae -o user=vpit

# Mount SAE Archive drive
sudo mkdir /mnt/saearchive
sudo mount.cifs //10.108.160.36/saearchive /mnt/saearchive -o user=vpit

# Mount ENCS drive
sudo mkdir /mnt/unixdrive
sudo sshfs -o allow_other,default_permissions z_zalass@login.encs.concordia.ca:/home/z/z_zalass /mnt/unixdrive

# Install OneDrive 
wget -qO - https://download.opensuse.org/repositories/home:/npreining:/debian-ubuntu-onedrive/xUbuntu_22.04/Release.key | gpg --dearmor | sudo tee /usr/share/keyrings/obs-onedrive.gpg > /dev/null
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/obs-onedrive.gpg] https://download.opensuse.org/repositories/home:/npreining:/debian-ubuntu-onedrive/xUbuntu_22.04/ ./" | sudo tee /etc/apt/sources.list.d/onedrive.list
sudo apt update
sudo apt install -y --no-install-recommends --no-install-suggests onedrive
onedrive --synchronize
systemctl --user enable onedrive
systemctl --user start onedrive
