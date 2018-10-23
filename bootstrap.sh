#!/bin/bash

# Update && install needed tools
sudo apt-get update -y
sudo apt-get install -y curl make g++ rsync dos2unix
sudo apt-get install curl

# Get user name
# user=`whoami`

# NodeJS version ^10
wget -qO- https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install -y nodejs

# Docker
	# remove if exists
sudo apt-get remove docker docker-engine docker.io

	# installation
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

    # fingerprint 9DC8 5822 9FC7 DD38 854A E2D8 8D81 803C 0EBF CD88
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update -y
sudo apt-get -y install docker-ce

# Google chrome stable
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list
sudo apt-get install google-chrome-stable

# VS code
sudo add-apt-repository -y "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EB3E94ADBE1229CF
sudo apt -y install code