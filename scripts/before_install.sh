#!/bin/bash


#copy .env, pm2 ecosystem files and move them to a temp folder
mkdir -p /home/ubuntu/temp/
cp /home/ubuntu/atelier/.env /home/ubuntu/temp/
# cp /home/ubuntu/atelier/ecosystem.config.js /home/ubuntu/temp/
sudo rm -r -f /home/ubuntu/atelier/
# EOF