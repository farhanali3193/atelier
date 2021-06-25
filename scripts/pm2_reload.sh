#!/bin/bash

cd /home/ubuntu/atelier
sudo pm2 stop all
# /usr/local/bin/pm2 reload ecosystem.config.js --env production