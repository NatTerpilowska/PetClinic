#! bin/bash
# If using Ubuntu 18.04
sudo apt update
sudo apt-get install default-jdk -y
# Verify 

# Docker-stuff Install
sudo apt install curl -y
curl https://get.docker.com | sudo bash 
sudo usermod -aG docker $(whoami)

# make sure jq & curl is installed
sudo apt install -y curl jq
# set which version to download (latest)
version=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | jq -r '.tag_name')
# download to /usr/local/bin/docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/${version}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
# make the file executable
sudo chmod +x /usr/local/bin/docker-compose

# cd spring-petclinic-angular
# rm -rf node_modules
# rm -f *.deb
# sudo apt install npm -y

# curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

# sudo npm uninstall -g angular-cli @angular/cli
# sudo npm cache clean --force
# sudo npm install -g @angular/cli@8
# npm install --save-dev @angular/cli@8

# npm install
# npm i --save-dev karma karma-chrome-launcher

# sudo apt-get install chromium-browser -y

# cd ..

