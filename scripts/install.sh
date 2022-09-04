#!/bin/bash
#Script runs in docker container
#start at root of code
cd /code
# refreshing the repositories
apt-get update

# install sudo
apt-get -y install sudo

# Time settings
apt-get -y install curl
sudo ln -snf /usr/share/zoneinfo/$(curl https://ipapi.co/timezone) /etc/localtime
sudo apt-get install -y tzdata
sudo dpkg-reconfigure --frontend noninteractive tzdata

# install nano for crontab editing
sudo apt-get -y install nano

#Install certbot and cron
sudo apt-get -y install cron
sudo apt-get -y install certbot
sudo service cron start 

# Python and pip
# This is the biggest part and takes a long time...
# Needed to install node-gyp which is needed for rpio
# Without rpio this project doesn't work
sudo apt-get -y install python-setuptools
sudo apt-get -y install build-essential
sudo npm install rpio

# git used for updating
sudo apt-get -y install git

# Installs all modules in package.json and checks for security issues and fix them
sudo npm install
sudo npm audit fix

# Run webpack so that the bundle.js can be created
sudo npx webpack --config webpack.config.js