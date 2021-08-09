#!/bin/bash
# ------------------------------------
#
# This script will install docker.
# This script is created for and tested on Ubuntu.
# This script may not work on non-ubuntu systems!
#
# ------------------------------------

# Update sources and apps
apt update -y && apt upgrade -y

# Remove docker if it is already installed
apt remove -y docker docker-engine docker.io containerd runc

# Install docker pre-requisites
apt install -y curl apt-transport-https ca-certificates curl gnupg lsb-release

# Install docker engine, using the install script
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh

# add user to docker group
if [ "$(lsb_release -is)" == "Ubuntu" ]; then
  usermod -aG docker ubuntu
else
  echo "Add user to \"docker\" group."
fi

# Install docker-compose
apt install -y docker-compose

# Update config files
echo "vm.max_map_count=524288" >> /etc/sysctl.conf
echo "fs.file-max=131072" >> /etc/sysctl.conf

echo "Installing Docker complete. Rebooting now!"
reboot