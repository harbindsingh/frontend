#!/bin/bash
cd /var/www/html/iNodeRackAuditFrontend/src
npm start
pm2 start npm --name "RMS" -- start
pm2 startup
pm2 save
pm2 restart all
