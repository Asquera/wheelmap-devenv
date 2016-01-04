#!/bin/bash

apt-get update
export DEBIAN_FRONTEND=noninteractive #Prevents mysql installer to show set password dialogue
apt-get install -y git imagemagick mysql-server python-software-properties
mysqladmin -u root password test1234!
add-apt-repository ppa:brightbox/ruby-ng
apt-get update
apt-get install -y ruby2.2
