#!/bin/bash

apt-get -y update
apt-get -y install puppet libdb-dev libdb5.1-dev


mkdir /usr/local/src/openldap
cd /usr/local/src/openldap
wget http://www.openldap.org/software/download/OpenLDAP/openldap-release/openldap-2.4.40.tgz
tar -zxvf openldap-2.4.40.tgz
cd /usr/local/src/openldap/openldap-2.4.40
./configure
make depend
make test
make
make install
