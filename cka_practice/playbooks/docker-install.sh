#!/bin/bash
sudo yum -y install docker-ce
sed -i -e s/--log-driver=journald//g /etc/sysconfig/docker
sudo systemctl restart docker.service

# setting up docker volume 
printf "STORAGE_DRIVER=overlay2\nDEVS=/dev/sdb\nVG=docker-vg\n" > /tmp/docker-storage-setup
sudo mv /tmp/docker-storage-setup /etc/sysconfig/docker-storage-setup
sudo docker-storage-setup


