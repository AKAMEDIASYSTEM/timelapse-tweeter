#!/bin/bash
# timelapse-tweeter AKA installer
echo 'installing timelapse-tweeter now'
sudo chmod +x upload.sh catchup.sh takestill.sh
line="* 6-19 * * * cd /home/pi/timelapse-tweeter && sudo sh takestill.sh"
(sudo crontab -l; echo "$line" ) | sudo crontab -
# ALTER THIS LINE TO CHANGE HOW OFTEN YOU UPLOAD A GIF
line="17 7-20 * * * cd /home/pi/timelapse-tweeter && sudo sh upload.sh"
(sudo crontab -l; echo "$line" ) | sudo crontab -