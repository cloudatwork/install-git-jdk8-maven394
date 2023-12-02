#!/bin/bash
#Install git
sudo add-apt-repository ppa:git-core/ppa -y
sudo apt update
sudo apt-get remove needrestart -y
sudo apt upgrade -y
sudo apt install git -y

#Install JDK 8
sudo apt install openjdk-8-jdk -y

#Add JAVA_HOME
sudo sed -i '3iexport JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-amd64' /etc/profile
sudo sed -i '4iexport PATH=$JAVA_HOME/bin:$PATH' /etc/profile
source /etc/profile

#Installing MAVEN
wget https://dlcdn.apache.org/maven/maven-3/3.9.4/binaries/apache-maven-3.9.4-bin.tar.gz
sudo tar xf apache-maven-*.tar.gz -C /opt
sudo ln -s /opt/apache-maven-3.9.4 /opt/maven
sudo sed -i '5iexport M2_HOME=/opt/maven' /etc/profile
sudo sed -i '6iexport MAVEN_HOME=/opt/maven' /etc/profile
sudo sed -i '7iexport PATH=${M2_HOME}/bin:${PATH}' /etc/profile
source /etc/profile
