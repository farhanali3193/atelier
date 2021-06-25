#!/bin/bash

sudo chmod -R 777 /home/ubuntu/atelier

#Copy and paste the .env file and the uploads folder into the atelier directory
cp /home/ubuntu/temp/.env /home/ubuntu/atelier/.env
cp /home/ubuntu/temp/ecosystem.config.js /home/ubuntu/atelier/ecosystem.config.js
cd /home/ubuntu/atelier
npm install
sudo /usr/local/bin/pm2 stop all
# EOF