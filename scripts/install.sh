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


sudo apt install -y unzip wget
wget https://releases.hashicorp.com/terraform/0.14.6/terraform_0.14.6_linux_amd64.zip
unzip terraform_*_linux_*.zip
sudo mv terraform /usr/local/bin
rm terraform_*_linux_*.zip
terraform --version