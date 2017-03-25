#!/usr/bin/env bash




##java
sudo yum install java-1.8.0-openjdk-devel -y


#echo "export JAVA_HOME=\$(dirname \$(dirname \$(readlink -f \$(which java))))" | sudo tee --append /etc/profile
#echo "export PATH=\$JAVA_HOME/bin:\$PATH" | sudo tee --append /etc/profile
#export JAVA_HOME=$(dirname $(dirname $(readlink -f $(which java))))
#export PATH=$JAVA_HOME/bin:$PATH

echo "export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.121-0.b13.29.amzn1.x86_64" | sudo tee --append /etc/profile
echo "export PATH=\$JAVA_HOME/bin:\$PATH" | sudo tee --append /etc/profile


export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.121-0.b13.29.amzn1.x86_64
export PATH=$JAVA_HOME/bin:$PATH




##maven

sudo wget http://repos.fedorapeople.org/repos/dchen/apache-maven/epel-apache-maven.repo -O /etc/yum.repos.d/epel-apache-maven.repo
sudo sed -i s/\$releasever/6/g /etc/yum.repos.d/epel-apache-maven.repo
sudo yum install -y apache-maven
mvn --version
