#!/bin/bash

cd /home/ubuntu/atelier
npm install
npm run build-prod

# sudo service nginx restart

cp /home/ubuntu/temp/ecosystem.config.js /home/ubuntu/atelier/ecosystem.config.js
pm2 reload ecosystem.config.js --env production
pm2 save
# EOF