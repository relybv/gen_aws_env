#!/bin/bash
sudo yum update
#sudo yum install -y nfs-utils
#sudo echo "nameserver   8.8.8.8" >> /etc/resolv.conf
echo "Creating docroot mount dir"
sudo mkdir /docroot
echo "mounting ${storage_ip} as docroot"
sudo mount -t nfs ${storage_ip}:/ /docroot
sudo rm -rf /var/www/html
sudo ln -s /docroot /var/www/html
