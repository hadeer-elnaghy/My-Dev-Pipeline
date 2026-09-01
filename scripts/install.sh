#!/bin/bash
set -e

# Export standard system PATH
export PATH=$PATH:/usr/bin:/bin:/usr/local/bin

# Update and install Node.js & npm
apt-get update -y
apt-get install -y nodejs npm

# Install PM2 globally
npm install -g pm2
