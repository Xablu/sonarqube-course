#!/bin/bash

# Update sources and apps
apt update && apt upgrade

# Remove docker if it is already installed
apt-get remove docker docker-engine docker.io containerd runc

# Install docker pre-requisites
apt install curl apt-transport-https ca-certificates curl gnupg lsb-release

# Install docker engine, using the install script
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh