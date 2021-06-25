#!/bin/bash

sudo chmod -R 777 /home/ubuntu/atelier

#Copy and paste the .env file and the uploads folder into the atelier directory
cp /home/ubuntu/temp/.env /home/ubuntu/atelier/.env
cp /home/ubuntu/temp/ecosystem.config.js /home/ubuntu/atelier/ecosystem.config.js
mkdir -p /home/ubuntu/atelier/uploads
cd /home/ubuntu/atelier
npm install
# EOF