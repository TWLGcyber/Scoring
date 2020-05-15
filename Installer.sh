#!/bin/bash

read -p "Would you like to install the Scoring Engine? " -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Nn]$ ]]
then
    sudo mv Engine.sh /home/cyberpatriot/Desktop
    sudo mv Forensic1.txt /home/cyberpatriot/Desktop
    sudo mv Forensic2.txt /home/cyberpatriot/Desktop
    sudo mv Forensic3.txt /home/cyberpatriot/Desktop
    sudo mv ScoringReport.txt /home/cyberpatriot/Desktop
    sudo mkdir /etc/Cyber
    sudo mv gain.wav /etc/Cyber
    sudo chmod 777 /home/cyberpatriot/Desktop/Engine.sh
    sudo crontab -l | { cat; echo "* * * * * sudo bash /home/cyberpatriot/Desktop/Engine.sh"; } | crontab -
fi
