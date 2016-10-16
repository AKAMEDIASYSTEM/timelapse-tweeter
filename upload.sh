#!/bin/bash
# AKA timelapse gif upload script

sudo ffmpeg -f image2 -i "a%03d.jpg" -s 640x480 lastHour.mov -y
sudo ffmpeg -y  -i lastHour.mov -vf fps=10,scale=320:-1:flags=lanczos,palettegen palette.png
ffmpeg -y -i lastHour.mov -i palette.png -filter_complex "fps=10,scale=320:-1:flags=lanczos[x];[x][1:v]paletteuse" lastHour.gif 

sudo python giffer.py