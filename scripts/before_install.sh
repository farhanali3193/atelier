#!/bin/bash

#copy .env, pm2 ecosystem files and move them to a temp folder
mkdir -p /home/ubuntu/temp/
# mkdir -p /home/ubuntu/uploads/
cp /home/ubuntu/atelier/.env /home/ubuntu/temp/.env
cp /home/ubuntu/atelier/ecosystem.config.js /home/ubuntu/temp/ecosystem.config.js
cd /home/ubuntu/atelier
# pm2 kill
sudo rm -r -f /home/ubuntu/atelier/
# EOF