#!/bin/bash
# Author: Kun Huang <academicgareth@gmail.com>

# set up ubuntu
sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak
sudo touch /etc/apt/sources.list

sudo add-apt-repository "deb http://mirrors.aliyun.com/ubuntu/ trusty main restricted universe"
sudo add-apt-repository "deb http://mirrors.aliyun.com/ubuntu/ trusty-updates main restricted universe"

# set up devstack

git clone --depth 1 https://github.com/openstack/devstack.git
