#!/bin/bash

cd /home/ubuntu/atelier
npm run build-prod
pm2 stop all
# /usr/local/bin/pm2 reload ecosystem.config.js --env production

# cp /home/ubuntu/temp/ecosystem.config.js /home/ubuntu/atelier/ecosystem.config.js
# pm2 reload ecosystem.config.js --env production
# pm2 save
# EOF

