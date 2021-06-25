#!/bin/bash

cd /home/ubuntu/atelier
npm run build-prod
sudo pm2 stop all
# sudo /etc/init.d/nginx reload
# cp /home/ubuntu/temp/ecosystem.config.js /home/ubuntu/atelier/ecosystem.config.js
# pm2 reload ecosystem.config.js --env production
# pm2 save
# EOF

