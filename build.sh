#!/bin/bash
sudo apt-get -y install wget
# TODO: check if java version already installed

if type -p java; then
    echo found java executable in PATH
    _java=java
    echo $java
else
    echo "downloading & installing java"
    sudo apt update
    sudo apt-get -y install oracle-java8-set-default
    sudo apt-get -y install oracle-java8-installer
    sudo apt install openjdk-8-jdk
    java -version
    echo "finished downloading & installing java"
fi

if type -p scala; then
    echo found scala executable in PATH
    _scala=scala
    echo $scala
else
    echo "downloading & installing scala"
    sudo wget www.scala-lang.org/files/archive/scala-2.11.12.deb
    sudo dpkg -i scala-2.11.12.deb
    scala -version
    echo "finished downloading & installing scala"
fi

if type -p node; then
    echo found node executable in PATH
    _node=node
    echo $node
else
    echo "downloading & installing node"
    # Install Node.js 7.x repository
    curl -sL https://deb.nodesource.com/setup_7.x | bash -

    # Install Node.js and npm
    sudo apt update
    apt-get -y install nodejs
    node --version
    echo "finished downloading & installing node"
fi

if type -p mvn; then
    echo found mvn executable in PATH
    _mvn=mvn
    echo $mvn
else
    echo "downloading & installing mvn"
    wget https://www-us.apache.org/dist/maven/maven-3/3.6.0/binaries/apache-maven-3.6.0-bin.tar.gz -P /tmp
    sudo tar xf /tmp/apache-maven-*.tar.gz -C /opt
    echo "finished downloading & installing node"
fi



