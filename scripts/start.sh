#!/bin/bash

# Go to the application folder
cd /home/ubuntu/myapp

# Install dependencies from package.json
npm install

# Check if the server is marked as Production or Dev
# We will set this ENV_NAME variable on the server itself later
if [ "$ENV_NAME" == "prod" ]; then
    echo "Applying Production settings..."
    cp config-prod.json config.json
else
    echo "Applying Development settings..."
    cp config-dev.json config.json
fi

# Stop any old running app, then start the new one using PM2
pm2 stop server || true
pm2 start server.js --name "my-web-app"
