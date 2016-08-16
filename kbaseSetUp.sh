#! /bin/bash 

#Install jdk 7 (could put this into say installjdk7.sh using nano …)
echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
apt-get install -y software-properties-common
add-apt-repository -y ppa:webupd8team/java
apt-get update
apt-get install -y oracle-java7-installer
rm -rf /var/cache/oracle-jdk7-installer

#install ant
apt-get install -y ant make

#get jars from kbase
git clone https://github.com/kbase/jars

#get kb_sdk repo
git clone https://github.com/kbase/kb_sdk
