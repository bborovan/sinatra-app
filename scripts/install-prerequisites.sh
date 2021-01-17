#!/bin/bash

echo "Setting up prerequisites..."
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo bash -c 'echo "deb [arch=amd64] https://download.docker.com/linux/ubuntu eoan stable" > /etc/apt/sources.list.d/docker-ce.list'

apt-get update
apt-get install -y git
apt-get install -y docker-ce
apt-get install -y ruby-full
apt-get install -y postgresql-client

echo "Done setup of prerequisites"
