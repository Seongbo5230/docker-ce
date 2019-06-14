#!/bin/bash

# initial setup
sudo apt-get update -y
sudo apt update -y

# add required packages
sudo apt-get -y install \
  apt-transport-https \
  ca-certificates \
  curl \
  gnupg-agent \
  software-properties-common

# get docker gpg key and docker packages
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# install docker
sudo apt-get update
sudo apt-get install -y docker-ce=5:18.09.5~3-0~ubuntu-bionic docker-ce-cli=5:18.09.5~3-0~ubuntu-bionic containerd.io

# give cloud_user or ubuntu permission to run docker commands
sudo usermod -a -G docker cloud_user
sudo usermod -a -G docker ubuntu
