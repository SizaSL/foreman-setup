#!/bin/bash

# Initial setup
# echo "192.168.1.12 foreman.client.local client" >> /etc/hosts
echo "192.168.1.11 foreman.server.local foreman" >> /etc/hosts
# sudo hostnamectl set-hostname foreman.client.local

# Install Puppet agent
rpm -Uvh https://yum.puppet.com/puppet6/puppet6-release-el-7.noarch.rpm
yum install -y puppet-agent

sudo echo '[agent]' >> /etc/puppetlabs/puppet/puppet.conf
sudo echo 'server = foreman.server.local' >> /etc/puppetlabs/puppet/puppet.conf
sudo echo 'runinterval = 180' >> /etc/puppetlabs/puppet/puppet.conf
sudo echo 'environment = production' >> /etc/puppetlabs/puppet/puppet.conf
sudo echo 'listen = false' >> /etc/puppetlabs/puppet/puppet.conf
sudo echo 'pluginsync = true' >> /etc/puppetlabs/puppet/puppet.conf
sudo echo 'report = true ' >> /etc/puppetlabs/puppet/puppet.conf