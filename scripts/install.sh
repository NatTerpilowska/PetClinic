#! bin/bash
# If using Ubuntu 18.04
sudo apt update
sudo apt-get install default-jdk -y
# Verify 
java --version
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
# # Ansible (notsure if needed) 
# sudo apt install software-properties-common
# sudo apt-add-repository --yes --update ppa:ansible/ansible
# sudo apt install ansible
# # Terraform 
# sudo apt upgrade -y
# sudo apt install -y unzip wget
# sudo mv terraform /usr/local/bin
# # Verify 
# terraform --version 
cd spring-petclinic-angular
sudo apt install npm -y

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

sudo npm uninstall -g angular-cli @angular/cli
npm cache clean
sudo npm install -g @angular/cli@latest
npm install --save-dev @angular/cli@latest

npm install
npm i --save-dev karma karma-chrome-launcher
sudo apt-get install chromium-browser -y
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
cd ..

