#!/bin/bash
sudo apt update
sudo apt install -y curl jq

#installs docker
curl https://get.docker.com | sudo bash
sudo usermod -aG docker $(whoami)


#installs docker compose
version=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | jq -r '.tag_name')
sudo curl -L "https://github.com/docker/compose/releases/download/${version}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version

#install az cli
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
az login

#installs kubectl
curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
sudo mv ./kubectl /usr/local/bin/kubectl 