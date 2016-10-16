#!/bin/bash
# timelapse-tweeter AKA installer
echo 'installing timelapse-tweeter now'
sudo chmod +x upload.sh catchup.sh takestill.sh
line="* * * * * cd /home/pi/timelapse-tweeter && sudo sh takestill.sh"
(sudo crontab -l; echo "$line" ) | sudo crontab -
# ALTER THIS LINE TO CHANGE HOW OFTEN YOU UPLOAD A GIF
line="31 * * * * cd /home/pi/timelapse-tweeter && sudo sh upload.sh"
(sudo crontab -l; echo "$line" ) | sudo crontab -