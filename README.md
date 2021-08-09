This repository is to be used in addition to the training content by Xablu.  
The content in this repository is to be used for training purposes only.  
The scripts are tested on Ubuntu.  
  
## Exercise 1  

First install docker, using the install-docker.sh script by running the command "sudo ./install-docker.sh".  
Second run the Sonarqube docker container by running "docker-compose up ." from the install-sonarqube directory.  

When running containers, please note that the container takes the sysctl settings from the host OS, not the container.  
The Sonarqube documentation says to set the values:  
- sysctl -w vm.max_map_count=524288  
- sysctl -w fs.file-max=131072  
When running containers, these values need to be set on the host OS.  

## Exercise 2

