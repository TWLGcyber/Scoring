#!/bin/bash

#This is my test scoring engine for my CyberPatriot Image
#Scoring report is located on the desktop as ScoringReport.txt


if grep -F "Welcome to Greenbrier Middle!" /home/cyberpatriot/Desktop/Forensic1.txt; then
  if grep -F "You have answered Forensic Question 1 correctly." /home/cyberpatriot/Desktop/ScoringReport.txt; then
    ls
  else
  echo "You have answered Forensic Question 1 correctly." >> /home/cyberpatriot/Desktop/ScoringReport.txt
  aplay /etc/Cyber/gain.wav
  fi
fi

if grep -F "DBiggers" /home/cyberpatriot/Desktop/Forensic2.txt; then
  if grep -F "You have answered Forensic Question 2 correctly." /home/cyberpatriot/Desktop/ScoringReport.txt; then
    ls
  else
  echo "You have answered Forensic Question 2 correctly." >> /home/cyberpatriot/Desktop/ScoringReport.txt
  aplay /etc/Cyber/gain.wav
  fi
fi

if grep -F "Rainbow, you suck at siege!" /home/cyberpatriot/Desktop/Forensic3.txt; then
  if grep -F "You have answered Forensic Question 3 correctly." /home/cyberpatriot/Desktop/ScoringReport.txt; then
    ls
  else
  echo "You have answered Forensic Question 3 correctly." >> /home/cyberpatriot/Desktop/ScoringReport.txt
  aplay /etc/Cyber/gain.wav
  fi
fi

if grep -F "allow-guest=false" /etc/lightdm/lightdm.conf.d/*.conf; then
  if grep -F "You have answered correctly disabled the guest user." /home/cyberpatriot/Desktop/ScoringReport.txt; then
    ls
  else
  echo "You have answered correctly disabled the guest user." >> /home/cyberpatriot/Desktop/ScoringReport.txt
  aplay /etc/Cyber/gain.wav
  fi
fi

if grep -F "ucredit=-1 lcredit=-1 dcredit=-1 ocredit=-1" /etc/pam.d/common-password; then
  if grep -F "You have answered correctly configured password complexity." /home/cyberpatriot/Desktop/ScoringReport.txt; then
    ls
  else
  echo "You have answered correctly configured password complexity." >> /home/cyberpatriot/Desktop/ScoringReport.txt
  aplay /etc/Cyber/gain.wav
  fi
fi

if sudo ufw status | grep "Status: active" > /dev/null; then
  if grep -F "You have correctly enabled the firewall." /home/cyberpatriot/Desktop/ScoringReport.txt; then
    ls
  else
  echo "You have correctly enabled the firewall." >> /home/cyberpatriot/Desktop/ScoringReport.txt
  aplay /etc/Cyber/gain.wav
  fi
fi
