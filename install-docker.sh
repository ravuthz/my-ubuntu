#!/bin/sh

echo "Install Docker on Unbuntu"

sudo apt-get update

sudo apt-get install ca-certificates curl gnupg lsb-release -y

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  
sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose -y

# sudo apt-get purge docker-ce docker-ce-cli containerd.io
# sudo rm -rf /var/lib/docker
# sudo rm -rf /var/lib/containerd

sudo usermod -aG docker $USER

# sudo groupadd docker
# sudo gpasswd -a $USER docker
