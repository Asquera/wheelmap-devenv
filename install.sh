#!/bin/bash

apt-get update
export DEBIAN_FRONTEND=noninteractive #Prevents mysql installer to show set password dialogue
apt-get install -y git imagemagick mysql-server python-software-properties curl build-essential libmysqlclient-dev libxslt-dev libxml2-dev zlib1g-dev libmagick++-dev vim
add-apt-repository ppa:brightbox/ruby-ng
apt-get update
apt-get install -y ruby2.2 ruby2.2-dev
gem install bundler
curl -sL https://deb.nodesource.com/setup_4.x | bash
apt-get install -y nodejs
add-apt-repository ppa:fcwu-tw/ppa
apt-get update
apt-get install -y vim
