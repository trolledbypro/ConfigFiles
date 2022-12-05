#!/bin/bash

# Install the packages
sudo add-apt-repository ppa:jstaf/onedriver
sudo apt update
sudo apt install cifs-utils
sudo apt install sshfs
sudo apt install onedriver

# Mount SAE drive
sudo mkdir /mnt/sae
sudo mount.cifs //10.108.160.36/sae /mnt/sae -o user=vpit

# Mount SAE Archive drive
sudo mkdir /mnt/saearchive
sudo mount.cifs //10.108.160.36/saearchive /mnt/saearchive -o user=vpit

# Mount ENCS drive
sudo mkdir /mnt/unixdrive
sudo sshfs -o allow_other,default_permissions z_zalass@login.encs.concordia.ca:/home/z/z_zalass /mnt/unixdrive