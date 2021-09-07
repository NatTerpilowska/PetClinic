#! bin/bash
# If using Ubuntu 18.04
sudo apt update
sudo apt install default-jdk
# Verify 
java --version
# Docker-stuff Install
sudo apt install curl -y
curl https://get.docker.com | sudo bash 
sudo usermod -aG docker $(whoami)
# NGINX
sudo apt install -y nginx
# Dcoker-NGINX config 
docker run -d --rm -p 80:80 --name nginx nginx
# Ansible (notsure if needed) 
sudo apt update 
sudo apt install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible
# Terraform 
sudo apt update && sudo apt upgrade -y
sudo apt install -y unzip wget
sudo mv terraform /usr/local/bin
# Verify 
terraform --version 
