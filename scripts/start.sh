#!/bin/bash
set -e
export PATH=$PATH:/usr/local/bin:/usr/bin

cd /home/ubuntu/myapp
npm install

if [ "$ENV_NAME" == "prod" ]; then
    echo "Applying Production settings..."
    cp config-prod.json config.json
else
    echo "Applying Development settings..."
    cp config-dev.json config.json
fi

pm2 stop server || true
pm2 delete server || true
pm2 start server.js --name "my-web-app"
