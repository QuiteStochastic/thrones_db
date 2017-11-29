#!/usr/bin/env sh
##run this file as root

yum install docker
mv cgroupfs-mount/cgroupfs-mount /usr/local/bin/
groupadd docker
usermod -aG docker ec2-user

##do the below block every time the box restarts
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
