#!/bin/bash

if sudo ufw status | grep "Status: active" > /dev/null; then
  if grep -F "1. You have correctly enabled the firewall." /home/cyberpatriot/Desktop/ScoringReport.txt; then
    ls
  else
  echo "1. You have correctly enabled the firewall." >> /home/cyberpatriot/Desktop/ScoringReport.txt
  fi
fi

if grep -F "ucredit=-1 lcredit=-1 dcredit=-1 ocredit=-1" /etc/pam.d/common-password; then
  if grep -F "2. You have answered correctly configured password complexity." /home/cyberpatriot/Desktop/ScoringReport.txt; then
    ls
  else
  echo "2. You have answered correctly configured password complexity." >> /home/cyberpatriot/Desktop/ScoringReport.txt
  fi
fi

Sam=$(groups sam)
if [[ $Sam != *"sudo"* ]]; then
    if grep -F "Sam is not an Admin." /home/cyberpatriot/Desktop/ScoringReport.txt; then
    ls
  else
  echo "3. Sam is not an Admin." >> /home/cyberpatriot/Desktop/ScoringReport.txt
  fi
fi

DBiggers=$(groups user1)
if [[ $DBiggers == *"sudo"* ]]; then
    if grep -F "User1 is an Admin." /home/cyberpatriot/Desktop/ScoringReport.txt; then
    ls
  else
  echo "4. User1 is an Admin." >> /home/cyberpatriot/Desktop/ScoringReport.txt
  fi
fi

if grep -F "PASS_MAX_DAYS	30" /etc/login.defs; then
  if grep -F "5. Maximum password age set." /home/cyberpatriot/Desktop/ScoringReport.txt; then
    ls
  else
  echo "5. Maximum password age set." >> /home/cyberpatriot/Desktop/ScoringReport.txt
  fi
fi

if grep -F "PASS_MIN_DAYS	10" /etc/login.defs; then
  if grep -F "6. Minimum password age set." /home/cyberpatriot/Desktop/ScoringReport.txt; then
    ls
  else
  echo "6. Minimum password age set." >> /home/cyberpatriot/Desktop/ScoringReport.txt
  fi
fi

if grep -F "net.ipv4.tcp_syncookies=1" /etc/sysctl.conf; then
  if grep -F "7. TCP/SYN Cookies enabled." /home/cyberpatriot/Desktop/ScoringReport.txt; then
    ls
  else
  echo "7. TCP/SYN Cookies enabled." >> /home/cyberpatriot/Desktop/ScoringReport.txt
  fi
fi

if grep -F "net.ipv4.ip_foward=0" /etc/sysctl.conf; then
  if grep -F "8. IPV4 forwarding disables." /home/cyberpatriot/Desktop/ScoringReport.txt; then
    ls
  else
  echo "8. IPV4 forwarding disables." >> /home/cyberpatriot/Desktop/ScoringReport.txt
  fi
fi

if grep -F "kernel.randomize_va_space = 2" /etc/sysctl.conf; then
  if grep -F "9. Kernel Space set to 2." /home/cyberpatriot/Desktop/ScoringReport.txt; then
    ls
  else
  echo "9. Kernel Space set to 2." >> /home/cyberpatriot/Desktop/ScoringReport.txt
  fi
fi

if grep -F "PermitRootLogin no" /etc/ssh/sshd_config; then
  if grep -F "10. Root login disabled for SSH." /home/cyberpatriot/Desktop/ScoringReport.txt; then
    ls
  else
  echo "10. Root login disabled for SSH." >> /home/cyberpatriot/Desktop/ScoringReport.txt
  fi
fi

if grep -F "PermitEmptyPasswords no" /etc/ssh/sshd_config; then
  if grep -F "11. Empty passwords disabled for SSH." /home/cyberpatriot/Desktop/ScoringReport.txt; then
    ls
  else
  echo "11. Empty passwords disabled for SSH." >> /home/cyberpatriot/Desktop/ScoringReport.txt
  fi
fi
