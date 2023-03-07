#!/bin/bash

apt install -y nginx

rm /etc/nginx/sites-available/default

cp myserver.config /etc/nginx/sites-available/myserver.config 

ln -s /etc/nginx/sites-available/myserver.config /etc/nginx/sites-enabled/

ufw allow 'Nginx Full'

echo "Check if Nginx configrations are correct ..."
nginx -t

systemctl restart nginx

