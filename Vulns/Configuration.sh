#!/bin/bash


sudo rm -rf /etc/issue
sudo echo "Welcome to Greenbrier Middle School!" >> /etc/issue
sudo chmod 777 /etc/issue

sudo sed -i '$a DBiggers    ALL=(ALL) ALL' /etc/sudoers

sudo mv /home/cyberpatriot/Scoring/Vulns/Passwords.txt /etc/gnome/.Passwords.txt

dpkg -s ufw &> /dev/null  
if [ $? -ne 0 ]
  then
    sudo apt-get purge ufw -y
fi

sudo apt-get install john -y
sudo apt-get install nikto -y
sudo apt-get install wireshark -y
sudo apt-get install hydra -y

dpkg -s libpam-cracklib &> /dev/null  
if [ $? -ne 0 ]
  then
    sudo apt-get purge libpam-cracklib -y
fi
