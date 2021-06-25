#!/bin/bash

sudo chmod -R 777 /home/ubuntu/atelier

#Copy and paste the .env file and the uploads folder into the atelier directory
cp /home/ubuntu/temp/.env /home/ubuntu/atelier/.env
cd /home/ubuntu/atelier
# EOF