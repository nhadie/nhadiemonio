#!/bin/bash

apt-get -y update
apt-get -y install puppet puppetmaster


rsync -av /vagrant/puppetmaster/puppet/. /etc/puppet/
chown root:root /etc/puppet -fR
service puppetmaster restart
puppet agent
