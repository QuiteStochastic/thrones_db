#!/usr/bin/env sh

curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.03.0-ce.tgz && tar --strip-components=1 -xvzf docker-17.03.0-ce.tgz -C /usr/local/bin
git clone https://github.com/tianon/cgroupfs-mount
mv cgroupfs-mount/cgroupfs-mount /usr/local/bin/
groupadd docker
usermod -aG docker $USER

##do the below block every time the box restarts
sudo su
export PATH=/usr/local/bin:$PATH
cgroupfs-mount
##turn on experimental mode
dockerd --experimental &


##for now, do not do sudo yum install docker.  as of now, that doesn't give you the version 1.13 that you need.  when aws's repos advance though, then that would be sufficient
#sudo yum update -y
#sudo yum upgrade -y
#
#sudo yum install docker -y
#sudo service docker start
#
#sudo groupadd docker
#sudo usermod -aG docker $USER
