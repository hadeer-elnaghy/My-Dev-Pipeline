#!/bin/bash
set -e

apt-get update -y
apt-get install -y nodejs npm
npm install -g pm2
