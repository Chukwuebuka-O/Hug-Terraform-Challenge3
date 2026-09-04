#!/bin/bash

# Install and start Nginx
apt-get update -y
apt-get install -y nginx
systemctl enable nginx
systemctl start nginx

# HTML page
echo "<h1>Chukwuebuka Okafor</h1><h2>HUG Lagos/Ibadan Terraform Challenge</h2>" > /var/www/html/index.html

systemctl restart nginx


