# scripts/install.sh
#!/bin/bash
set -e

apt-get update -y
apt-get install -y nodejs npm

# Work around Ubuntu 24.04's occasionally-broken npm symlink
if ! command -v npm &> /dev/null; then
    ln -sf /usr/share/nodejs/npm/bin/npm-cli.js /usr/bin/npm
    chmod +x /usr/share/nodejs/npm/bin/npm-cli.js
fi

which npm
npm install -g pm2
which pm2
