#!/bin/sh

set -e

#############################################
echo "step1"
sudo apt-get update
echo "step2"
sudo apt-get install default-jdk
echo "step3"
sudo groupadd tomcat
echo "step4"
sudo useradd -s /bin/false -g tomcat -d /opt/tomcat tomcat
echo "step5"
curl -O http://redrockdigimark.com/apachemirror/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz
echo "step6"
sudo mkdir /opt/tomcat
echo "step7"
sudo tar xzvfapache-tomcat-8*tar.gz -C /opt/tomcat --strip-components=1
echo "step8"
sudo mkdir /opt/tomcat
echo "step9"
cd /opt/tomcat
echo "step10"
sudo chgrp -R tomcat /opt/tomcat
echo "step11"
sudo chmod -R g+r conf
echo "step12"
sudo chmod g+x conf
echo "step13"
sudo chown -R tomcat webapps/ work/ temp/ logs/

