#!/bin/bash

cd /home/ubuntu/atelier
npm run build-prod

# pm2 kill
# pm2 restart ecosystem.config.js --env production
# sudo /usr/local/bin/pm2 reload ecosystem.config.js --env production
# sudo pm2 reload ecosystem.config.js --env production
# sudo /etc/init.d/nginx reload
# cp /home/ubuntu/temp/ecosystem.config.js /home/ubuntu/atelier/ecosystem.config.js
# pm2 reload ecosystem.config.js --env production
# pm2 save
# EOF

