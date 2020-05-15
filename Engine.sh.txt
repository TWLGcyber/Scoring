#!/bin/bash

#This is my test scoring engine for my CyberPatriot Image
#Scoring report is located on the desktop as ScoringReport.txt


if sudo cat /home/cyberpatriot/Desktop/Forensic1.txt |
  grep -xqFe "Welcome to Greenbrier Middle!"
then
  echo "You have answered Forensic Question 1 correctly." >> /home/cyberpatriot/Desktop/ScoringReport.txt
  aplay /etc/Cyber/gain.wav
fi

if sudo cat /home/cyberpatriot/Desktop/Forensic2.txt |
  grep -xqFe "DBiggers"
then
  echo "You have answered Forensic Question 2 correctly." >> /home/cyberpatriot/Desktop/ScoringReport.txt
  aplay /etc/Cyber/gain.wav
fi

if sudo cat /home/cyberpatriot/Desktop/Forensic3.txt |
  grep -xqFe "Rainbow, you suck at siege!"
then
  echo "You have answered Forensic Question 3 correctly." >> /home/cyberpatriot/Desktop/ScoringReport.txt
  aplay /etc/Cyber/gain.wav
fi


if sudo cat /etc/lightdm/lightdm.conf |
  grep -xqFe "allow-guest=false"
then
  echo "You have correctly disabled the guest user." >> /home/cyberpatriot/Desktop/ScoringReport.txt
  aplay /etc/Cyber/gain.wav
fi
