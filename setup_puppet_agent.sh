#!/bin/bash

# Initial setup
echo "192.168.1.12 foreman.client.local client" >> /etc/hosts
echo "192.168.1.11 foreman.server.local foreman" >> /etc/hosts
sudo hostnamectl set-hostname foreman.client.local

# Install Puppet agent
rpm -Uvh https://yum.puppet.com/puppet6/puppet6-release-el-7.noarch.rpm
yum install -y puppet-agent
