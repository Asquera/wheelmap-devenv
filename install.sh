#!/bin/bash

apt-get update
export DEBIAN_FRONTEND=noninteractive #Prevents mysql installer to show set password dialogue
apt-get install -y git imagemagick mysql-server
mysqladmin -u root password test1234!
