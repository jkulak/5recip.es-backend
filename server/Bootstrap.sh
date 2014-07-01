#!/usr/bin/env bash

apt-get update
# apt-get install -y apache2
# rm -rf /var/www
# ln -fs /Vagrant/www /var/www

# install git 1.9.1
apt-get install -y git=1:1.9.1-1

# install memcached 1.4.14
apt-get install -y memcached=1.4.14-0ubuntu9

# install nginx 1.4.6
apt-get install -y nginx=1.4.6-1ubuntu3

# install node v0.10.25
apt-get install -y nodejs=0.10.25~dfsg2-2ubuntu1

# install php5 with apache lib
apt-get install -y php5=5.5.9+dfsg-1ubuntu4

