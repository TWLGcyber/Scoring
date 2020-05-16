# Scoring

This engine is still currently under development. Please create an issue if you find any bugs. This VM will address more of the advanced vulnerabilities covered in the later rounds of CyberPatriot. I will upload the finished Image when the engine is complete. Until then, this is still a work in progress.

Installation:
1. Download this repository. (Preferably using git clone https://github.com/TWLGCyber/Scoring.git)
2. cd Scoring
3. sudo chmod +x Installer.sh
4. sudo bash Installer.sh
5. Add root crontab

Things to do:
1. Make sure to add this in your root crontab. '* * * * * /bin/bash /etc/Cyber/Engine.sh'
2. Make sure the user that will be solving the VM and using it is 'cyberpatriot'
3. The user 'cyberpatriot' needs to be a system administrator.
