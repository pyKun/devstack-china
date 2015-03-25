#!/bin/bash -x
# Author: Kun Huang <academicgareth@gmail.com>

# set up ubuntu
sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak
sudo touch /etc/apt/sources.list

sudo add-apt-repository "deb http://mirrors.aliyun.com/ubuntu/ trusty main restricted universe"
sudo add-apt-repository "deb http://mirrors.aliyun.com/ubuntu/ trusty-updates main restricted universe"

sudo apt-get update
sudo apt-get install vim git tmux python-pip ipython
sudo pip install -U pip # pip 6.0.0+ version has many important features
cp pip.conf ~/.pip/

# TODO setup pip caches

# set up devstack
cd ~
git clone --depth 1 https://github.com/openstack-dev/devstack.git
