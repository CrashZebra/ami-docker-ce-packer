#!/bin/sh

# Install Docker CE on Amazon Linux 2 AMI

# set -e

sudo yum install -y docker

sudo groupadd docker
sudo usermod -aG docker ec2-user

sudo systemctl enable docker

# install docker-compose
sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
