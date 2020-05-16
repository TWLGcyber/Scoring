#!/bin/bash

read -p "Are all the vulnerabilities set-up?" -n 1 -r
if [[ ! $REPLY =~ ^[Nn]$ ]]
then
    sudo chmod 777 /home/$USER/Scoring/Vulns/Configuration.sh
    sudo bash /home/$USER/Scoring/Vulns/Configuration.sh
fi

read -p "Would you like to install the Scoring Engine?" -n 1 -r
if [[ ! $REPLY =~ ^[Nn]$ ]]
then
    sudo mkdir /etc/Cyber
    sudo mv Engine.sh /etc/Cyber
    sudo mv Forensic1.txt /home/$USER/Desktop
    sudo mv Forensic2.txt /home/$USER/Desktop
    sudo mv Forensic3.txt /home/$USER/Desktop
    sudo mv ScoringReport.txt /home/$USER/Desktop
    sudo mv gain.wav /etc/Cyber
    sudo chmod 777 /etc/Cyber/Engine.sh
    #This next part deletes all of the files
    sudo rm -rf /home/$USER/Scoring
    #Reboots the machine
    sudo reboot
fi
