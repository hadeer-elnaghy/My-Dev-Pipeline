#!/bin/bash

# Wait for 5 seconds to let the application start fully
sleep 5

# Check if PM2 shows our app as 'online'
# If it is online, the deployment is marked as SUCCESS
pm2 list | grep my-web-app | grep online
