#!/bin/bash

# Update server packages
apt-get update -y

# Install Node.js and npm
apt-get install -y nodejs npm

# Install PM2 globally to keep the app running in the background
npm install pm2 -g
