#! /bin/bash
# Update your npm to the latest version
npm install npm -g
git clone https://github.com/louislam/uptime-kuma.git
cd uptime-kuma
npm run setup
# Install PM2 if you don't have: npm install pm2 -g
npm install pm2 -g
# Listen to different port or hostname
pm2 start server/server.js --name uptime-kuma
