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

## Bonus  

The Jenkinsfile in the bonus folder runs a Jenkins pipeline to build a docker container, which contains the React example app.  
To run the Jenkinsfile as part of the course, we assume SonarQube runs in a container on the same host as Jenkins.  

To build this container, install the following Jenkins plugins:
* docker
* docker pipeline
* NodeJS
* SonarScanner  

Setup the plugins.  
* NodeJS plugin: Add a NodeJS installation and name it: **Node-14**
* SonarScanner:
  - Add a SonarQube server in the Global configuration, named: **sonarqube**
  - Setup a project in SonarQube and name it: **nodejsapp**
  - Create a token and store the token as a credential in Jenkins, named: **sonarqube**  

Run the resulting container by running the command:  
    docker run -p 80:80 -d nodejsapp-sq:latest
