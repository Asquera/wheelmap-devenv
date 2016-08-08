#!/bin/bash

#Set locale to en_US.utf8. Needed for a successful capistrano deployment
update-locale LC_ALL=en_US.utf8

apt-get update
export DEBIAN_FRONTEND=noninteractive #Prevents mysql installer to show set password dialogue
apt-get install -y git imagemagick mysql-server python-software-properties curl build-essential libmysqlclient-dev libxslt-dev libxml2-dev zlib1g-dev libmagick++-dev vim ruby ruby-dev nodejs npm
gem install bundler
add-apt-repository ppa:fcwu-tw/ppa
apt-get update
apt-get install -y vim
add-apt-repository ppa:git-core/ppa
apt-get update
apt-get install -y git
