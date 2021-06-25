#!/bin/bash
export PM2_HOME=/home/ubuntu/.pm2
cd /home/ubuntu/atelier
pm2 stop all
# /usr/local/bin/pm2 reload ecosystem.config.js --env production