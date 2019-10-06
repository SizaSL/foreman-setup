#!/bin/bash

# Initial setup
echo "192.168.1.11 foreman.server.local foreman" >> /etc/hosts
sudo hostnamectl set-hostname foreman.server.local

# Install Puppet
sudo yum -y install https://yum.puppet.com/puppet6-release-el-7.noarch.rpm

# Enable the EPEL (Extra Packages for Enterprise Linux) and the Foreman repos
sudo yum -y install http://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
sudo yum -y install https://yum.theforeman.org/releases/1.23/el7/x86_64/foreman-release.rpm

# Download the installer
sudo yum -y install foreman-installer

# Run installer
sudo foreman-installer