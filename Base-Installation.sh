#!/bin/bash

sudo apt-get update -y

##########      NGINX Installaion      ###########
echo "Started Nginx Installation"
sudo apt install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx
sudo systemctl status nginx

##########      Node-JS Installaion      ###########
echo "Started Node-Js 10.x Installation"
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs

echo "Yarn Installation"
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update && sudo apt install yarn -y

echo "Node-version: `node -v`"
node -v
echo "NPM Version: `npm -v`"
npm -v

echo "Installing Required Libraries"
sudo apt-get install zlib1g-dev -y
apt-get install -y libjpeg-dev libpng-dev libtiff-dev libgif-dev


############        Certbot Installation    ############
echo "Strated Certbot Installation"
sudo apt-get update
sudo apt-get install software-properties-common -y
echo "Adding certbot repository"
sudo add-apt-repository ppa:certbot/certbot -y
sudo apt-get update -y
sudo apt-get install python-certbot-nginx -y