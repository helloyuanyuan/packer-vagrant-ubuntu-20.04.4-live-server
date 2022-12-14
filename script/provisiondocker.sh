#!/bin/bash -eu

SSH_USER=${SSH_USERNAME:-vagrant}

# Install docker ce & docker-compose
echo "==> Install docker ce & docker-compose"
apt-get clean
apt-get update
apt-get install -y apt-transport-https ca-certificates nfs-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt-get update
apt-get install -y docker-ce
usermod -aG docker ${SSH_USER}
curl -L "https://github.com/docker/compose/releases/download/v2.10.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose