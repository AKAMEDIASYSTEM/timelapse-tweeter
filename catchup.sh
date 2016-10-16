#!/bin/bash
# timelapse AKA stupid placeholder
MINS=a0$(date +"%M")
for i in {000..059};
do
echo $i
sudo raspistill -o a$i.jpg
sleep 5s
done
echo "done"
#sudo raspistill -o $MINS.jpg